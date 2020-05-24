<?php

namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\Db;
use think\Facade\Hook;
use think\Facade\Captcha;

class Message extends Controller
{
    protected $alltype = 6;
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $condition = [];$query = [];
        $start = $this->request->get('start');
        if($start){
            $start = sj($start);
            $condition[] = ['releasetime','>',$start];
            $query['start'] = $start;
        }
        $end = $this->request->get('end');
        if($end){
            $end = sj($end);
            $condition[] = ['releasetime','<',$end];
            $query['end'] = $end;
        }
        $phone = $this->request->get('phone');
        if($phone){
            $condition[] = ['phone','=',$phone];
            $query['phone'] = $phone;
        }
        $name = $this->request->get('name');
        if($name){
            $condition[] = ['name','like',$name];
            $query['name'] = $name;
        }
        $res = Db::table('message')->where($condition)->paginate(10,false,['query'=>$query])->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        $page = $res->render();
        $this->assign('pz',0);
        $this->assign('page',$page);
        if(!count($res)){
            return $this->fetch();die();
        }
        $this->assign('pz',1);
        $this->assign('data',$res);
        return $this->fetch();die();
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
        $name = $request->post('name');
        if(!$name){echo ajson('名字没写哦');die();}
        $phone = $request->post('phone');
        if(!$phone){echo ajson('手机号没写哦');die();}
        //关联类别表
        $pids = Db::table('classes')->field('id')->where('pid','=',0)->where('type','=',$this->alltype)->find();
        $pid = $pids['id'];
        $classid = 1;
        $res = Db::table('classes')->field('classid')->order('classid','desc')->find();
        if(!empty($res)){
            $classid = $res['classid'] + 1;
        }
        $data1 = ['pid'=>$pid,'classid'=>$classid,'title'=>$phone,'type'=>$this->alltype];
        $tag1 = Db::table('classes')->data($data1)->insert();
        if(!$tag1){
            echo ajson("关联类别表失败");die();
        }
        //插入留言表
        $content = $request->post('content');
        $releasetime = time();
        $data = ['classid'=>$classid,'name'=>$name,'phone'=>$phone,'content'=>$content,'releasetime'=>$releasetime];
        $tag = Db::table('message')->data($data)->insert();
        if(!$tag){echo ajson('添加失败');die();}
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
        $res = Db::table('message')->find($id);
        if(!count($res)){return "数据发生错误,数据库没找到该条数据";die();}
        $this->assign('data',$res);
        return $this->fetch();
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        $res = Db::table('message')->where('classid','=',$id)->find();
        if(!count($res)){return "数据错误,没找到该条数据!";die();}
        $this->assign('data',$res);
        return $this->fetch();
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
        $name = $request->post('name');
        if(!$name){echo ajson('名字没写哦');die();}
        $phone = $request->post('phone');
        if(!$phone){echo ajson('手机号没写哦');die();}
        Db::table('classes')->where('classid','=',$id)->data(['title'=>$phone])->update();
        $content = $request->post('content');
        $data = ['name'=>$name,'phone'=>$phone,'content'=>$content];
        $tag = Db::table('message')->data($data)->where('classid','=',$id)->update();
        if(!$tag){echo ajson('更新失败');die();}
        echo ajson(1);die();
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        $tag1 = Db::table('classes')->where('classid','=',$id)->delete();
        $tag = Db::table('message')->where('classid','=',$id)->delete();
        if(!$tag || !$tag1){
            echo ajson("删除发生错误!");
            die();
        }
        echo ajson(1);die();
    }

    public function deletes(){
        $ids = $this->request->post('ids');
        if(empty($ids)){echo asjon("未获得删除项");die();}
        $id = implode(",",$ids);
        $tag1 = Db::table('classes')->where('classid','in',$id)->delete();
        $tag = Db::table('message')->where('classid','in',$id)->delete();
        if(!$tag1 || !$tag){
            echo ajson('删除失败');die();
        }
        echo ajson(1);die();
    }
}
