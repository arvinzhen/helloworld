<?php

namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\Facade\Hook;
use think\Facade\Captcha;
use think\Db;

class Download extends Controller
{
    protected $alltype = 7;
    /**
     * 检查登入
     */
    protected function initialize(){
        Hook::add('app_begin','app\\admin\\behavior\\CheckLogin');
        Hook::listen('app_begin');
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $data = $this->rehtml();
        $this->assign('data',$data);
        return $this->fetch('index');
    }

    /**
     * 表格的部分
     */
    public function rehtml(){
        $request = new Request();
        $condition = [];$query = [];
        $start = $request->get('start');
        if($start){
            $start = strtotime($start);
            $condition[] = ['releasetime','>',$start];
            $query['start'] = $start;
        }
        $end = $request->get('end');
        if($end){
            $end = strtotime($end);
            $condition[] = ['releasetime','<',$end];
            $query['end'] = $end;
        }
        $title = $request->get('title');
        if($title){
            $condition[] = ['title','like',$title];
            $query['title'] = $title;
        }
        $res = Db::table('download')->field('id,classid,title,releasetime')->where($condition)->paginate(8,false,['query'=>$query])->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        $page = $res->render();
        $this->assign('page',$page);
        if(count($res)){
            $this->assign('pz',1);
        }else{
            $this->assign('pz',0);
        }
        $this->assign('data',$res);
        return $this->fetch('rehtml')->getContent();

    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        return $this->fetch();
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
        $title = $request->post('title');
        $wenjian = $request->file('wenjian');
        //关联类别表
        $pids = Db::table('classes')->field('id')->where('pid','=',0)->where('type','=',$this->alltype)->find();
        $pid = $pids['id'];
        $classids = Db::table('classes')->field('classid')->order('classid','desc')->find();
        $classid = 1;
        if(!empty($classids)){
            $classid = $classids['classid'] + 1;
        }
        $data1 = ['pid'=>$pid,'classid'=>$classid,'title'=>$title,'type'=>$this->alltype];
        $tag = Db::table('classes')->data($data1)->insert();
        if(!$tag){
            echo ajson("关联类别表失败");die();
        }
        //插入下载表
        $info = $wenjian->move('./upload/file');
        if(!$info){
            echo $wenjian->getError();
            die();
        }
        $path = $info->getSaveName();
        $releasetime = time();
        $data = ['classid'=>$classid,'title'=>$title,'path'=>$path,'releasetime'=>$releasetime];
        $tag = Db::table('download')->data($data)->insert();
        if(!$tag){
            echo ajson("数据库异常,添加失败");
            die();
        }
        echo ajson(1);die();
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        $res = Db::table('download')->where('id',$id)->find();
        if(empty($res)){
            return "<h1>当前内容为空</h1>";die();
        }
        $res['releasetime'] = sj($res['releasetime']);
        $this->assign('data',$res);
        return $this->fetch('detail');

    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        $res = Db::table('download')->where('id',$id)->find();
        if(empty($res)){
            return "<h1>当前内容异常!</h1>";die();
        }
        $this->assign('data',$res);
        return $this->fetch('edit');
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        $tag = false;
        $res = Db::table('download')->field('classid,title,path')->where('id',$id)->find();
        if(empty($res)){
            echo ajson("数据没找到!");die();
        }
        $classid = $res['classid'];
        $oldtitle = $res['title'];
        $title = $request->post('title');
        if($oldtitle != $title){
            $tag1 = Db::table('classes')->where('classid','=',$classid)->data(['title'=>$title])->update();
            if(!$tag1){echo ajson("关联类别表失败!");die();}
            $tag = true;
        }
        $path = $res['path'];
        if($request->file()){
            $tag = true;
            $path = "upload/file/".winDz($path);
            if(file_exists($path)){
                unlink($path);
            }
            $wenjian = $request->file('wenjian');
            $info = $wenjian->move("./upload/file");
            if(!$info){
                echo ajson($wenjian->getError());die();
            }
            $path = $info->getSaveName();
        }
        if(!$tag){
            echo ajson("未保存,因为数据没变化!");
            die();
        }
        $data = ['title'=>$title,'path'=>$path];
        $tag = Db::table('download')->where('id',$id)->data($data)->update();
        if(!$tag){echo ajson("更新失败!");die();}
        echo ajson(1);die();
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($classid)
    {
        $res = Db::table('download')->field('path')->where('classid','=',$classid)->find();
        if(empty($res)){
            echo ajson("数据异常!");die();
        }
        $path = "upload/file/".winDz($res['path']);
        if(file_exists($path)){
            unlink($path);
        }
        $tag1 = Db::table('classes')->where('classid','=',$classid)->delete();
        $tag = Db::table('download')->where('classid','=',$classid)->delete();
        if(!$tag || !$tag1){
            echo ajson("删除失败");die();
        }
        $data = $this->rehtml();
        echo json_encode(['state'=>1,'data'=>$data]);die();
    }


    public function deletes()
    {
        $ids = $this->request->post('ids');
        if(empty($ids)){
            echo ajson("请选择删除项!");die();
        }
        if(count($ids) > 8){
            echo ajson("一次性不能删除超过8项目");die();
        }
        foreach ($ids as $classid) {
            $res = Db::table('download')->field('path')->where('classid','=',$classid)->find();
            if(empty($res)){
                echo ajson("数据异常!");die();
            }
            $path = "upload/file/".winDz($res['path']);
            if(file_exists($path)){
                unlink($path);
            }
            $tag1 = Db::table('classes')->where('classid','=',$classid)->delete();
            $tag = Db::table('download')->where('classid','=',$classid)->delete();
            if(!$tag1 || !$tag){
                echo ajson("删除失败");die();
            }
        }
        echo ajson(1);die();
    }
}
