<?php

namespace app\admin\controller;

use think\Request;
use think\Controller;
use think\Validate;
use think\Facade\Env;
use think\Db;
use think\Facade\Hook;

class About extends Controller
{
    /**
     * 初始化,检查登入
     */
    protected function initialize(){
        Hook::add('app_begin','app\\admin\\behavior\\CheckLogin');
        Hook::listen('app_begin');
    }

    protected $alltype = 1;

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request)
    {
        // ohno($request->get('tag'));
        $condition = [];$query = [];
        $tag = $request->get('tag');
        if($tag){
            if($tag == 2){
                $tag = 0;
            }
            $condition[] = ['tag','=',$tag];
            $query['tag'] = $tag;
        }
        $title = $request->get('title');
        if($title){
            $condition[] = ['title','like',$title];
            $query['title'] = $title;
        }
        $start = $request->get('start');
        if($start){
            $condition[] = ['releasetime','<',strtotime($start)];
            $query['start'] = strtotime($start);
        }
        $end = $request->get('end');
        if($end){
            $condition[] = ['releasetime','<',strtotime($end)];
            $query['end'] = strtotime($end);
        }
        $list = Db::table('abouts')->field('id,classid,tag,title,releasetime')->where($condition)->paginate(8,false,['query'=>$query])->each(function($item, $key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        $this->assign('list',$list);
        return $this->fetch();
        //根据tag和titile
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        $res = Db::table('classes')->field('id,title')->where('pid','=',0)->where('type','=',$this->alltype)->select();
        $this->assign('data',$res);
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
        $tag = $request->post('hasimg');
        $pid = $request->post('title');
        if(!$pid){echo ajson('当前类别没选');die();}
        //关联classes
        $res3 = Db::table('classes')->field('title')->where('id','=',$pid)->find();
        $title = "公司简介";
        if(!empty($title)){
            $title = $res3['title'];
        }
        $content = $request->post('content');
        // ohno($content);
        $releasetime = time();
        $classids = Db::table('classes')->field('classid')->order('classid','desc')->find();
        $classid = 1;
        if($classids){
            $classid = $classids['classid'] + 1;
        }
        $data3 = ['pid'=>$pid,'classid'=>$classid,'title'=>$title,'type'=>$this->alltype];
        $tag3 = Db::table('classes')->data($data3)->insert();
        $data = ['tag'=>$tag,'classid'=>$classid,'title'=>$title,'content'=>$content,'imglist'=>'','releasetime'=>$releasetime];
        $pl = Db::table('abouts')->insert($data);
        if($pl && $tag3){
            echo ajson(1);die();
        }
        echo ajson("上传失败");
    }

    public function editsave(Request $request,$classid){
        $res = Db::table('abouts')->field('title')->where('classid','=',$classid)->find();
        $title = $request->post('title');
        $content = $request->post('content');
        if(!$res){echo ajson("数据异常");die();}
        $oldtitle = $res['title'];
        if($oldtitle == $title){
            $data = ['title'=>$title,'content'=>$content];
            $pl = Db::table('abouts')->where('classid','=',$classid)->update($data);
            Db::table('classes')->where('classid','=',$classid)->update(['title'=>$title]);
        }else{
            $pl = Db::table('abouts')->where('classid','=',$classid)->update(['content'=>$content]);
        }
        if($pl){
            echo ajson(1);die();
        }
        echo ajson("上传失败");
    }

    /**
     * 上传图片前文件名处理以及返回预览
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function instimg(Request $request)
    {
        $num = $request->post('length');
        if(!$num){
            echo ajso("没数据");die();
        }
        $files = $request->file();
        $pid = $request->post('title');
        $res3 = Db::table('classes')->field('title')->where('id','=',$pid)->find();
        $title = "荣誉资质";
        if(!empty($title)){
            $title = $res3['title'];
        }
        $data = [];
        $i = 0;
        $classids = Db::table('classes')->field('classid')->order('classid','desc')->find();
        $classid = 1;
        if($classids){
            $classid = $classids['classid'] + 1;
        }
        for(; $i < $num; $i++){
            $info = $files[$i]->validate(['ext'=>'jpg,jpeg,jfif,png,gif'])->move("./upload/".$title);
            if(!$info){
                echo $file->getError();die();
            }
            $releasetime = time();
            $name = $info->getSaveName();
            $data[] = ['tag'=>1,'classid'=>$classid,'title'=>$title,'content'=>'','imglist'=>$name,'releasetime'=>$releasetime];
        }
        Db::table('abouts')->insertAll($data);
        Db::table('classes')->insert(['classid'=>$classid,'pid'=>3,'title'=>$title,'type'=>$this->alltype]);
        echo json_encode(['state'=>1]);die();
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($classid)
    {
        if(!$classid){
            return "并没有接收到classid";
        }
        $res1 = Db::table('abouts')->field('title')->where('classid','=',$classid)->find();
        if(!$res1){
            return "数据异常";
        }
        $title = $res1['title'];
        $res2 = Db::table('abouts')->field('content,imglist,releasetime')->where('classid','=',$classid)->select();
        if(!$res2){
            return "当前数据为空";
        }
        foreach ($res2 as $value) {
            if($value['imglist']){
                $value['imglist'] = str_replace("\\", "/", $value['imglist']);
            }
            $value['releasetime'] = sj($value['releasetime']);
        }
        $this->assign('title',$title);
        $this->assign('data',$res2);
        return $this->fetch('detail');
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($classid)
    {
        $res = Db::table('abouts')->field('id,tag,title,content,imglist,releasetime')->where('classid', '=', $classid)->select();
        if(!$res){echo ajson("数据异常");die();}
        $res['pz'] = 0;$res['title'] = $res[0]['title'];
        $title = $res['title'];$res['classid'] = $classid;
        for($i = 0; $i < count($res) - 3; $i++) {
            $res[$i]['releasetime'] = sj($res[$i]['releasetime']);
            if($res[$i]['imglist']){
                $res[$i]['imglist'] = '/upload/'.$title."/".winDz($res[$i]['imglist']);
            }
            unset($res[$i]['title']);
        }
        if($res[0]['tag'] == 1){
            $res['pz'] = 1;
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
    public function update(Request $request,$classid)
    {
        $title = $request->post('title');
        $num = $request->post('length');
        //原始数据
        $res = Db::table('abouts')->field('title')->where('classid','=',$classid)->find();
        if($res){
            $oldtitle = $res['title'];
            if($oldtitle != $title){
                Db::table('abouts')->where('classid','=',$classid)->update(['title'=>$title]);
                Db::table('classes')->where('classid','=',$classid)->update(['title'=>$title]);
            }
        }
        if($num){
            $files = $request->file();
            $data = [];
            $i = 0;
            for(; $i < $num; $i++){
                $info = $files[$i]->validate(['ext'=>'jpg,jpeg,jfif,png,gif'])->move("./upload/".$title);
                if(!$info){
                    echo $file->getError();die();
                }
                $releasetime = time();
                $name = $info->getSaveName();
                $data[] = ['tag'=>1,'classid'=>$classid,'title'=>$title,'content'=>'','imglist'=>$name,'releasetime'=>$releasetime];
            }
            Db::table('abouts')->insertAll($data);
            if(!Db::table('classes')->where('classid','=',$classid)->find()){
                Db::table('classes')->insert(['classid'=>$classid,'title'=>$title]);
            }
        }
        echo json_encode(['state'=>1]);die();
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        if(!$id){
            echo ajson("并没有接收到删除项!");die();
        }
        $data = Db::table("abouts")->field("tag,classid,title,content,imglist")->where("id","=",$id)->find();
        if(!$data){echo ajson("数据异常");die();}
        $classid = $data['classid'];
        //删除文件
        if($data['tag'] == 1){
            if($data['imglist']){
                $path = "upload/".$data['title']."/".winDz($data['imglist']);
                if(file_exists($path)){
                    unlink($path);
                }
            }
        }else{
            if($data['content']){
                $imgData = getImgSrc($data['content']);
                if($imgData){
                    foreach ($imgData as $value) {
                        $path = winDz("upload/image/".$value);
                        if(file_exists($path)){
                            unlink($path);
                        }
                    }
                }
            }
        }
        //删除文件
        $tag = Db::table("abouts")->delete($id);
        if(!Db::table('abouts')->where('classid','=',$classid)->find()){
            Db::table('classes')->where('classid','=', $classid)->delete();
        }
        if($tag){
            echo ajson(1);die();
        }
        echo ajson("发生未知错误");die();
    }

    public function deletes(){
        $ids = $this->request->post('ids');
        for ($i = 0; $i < count($ids); $i++) {//由于两种数据类型在一张表里,逻辑冗余
            $id = $ids[$i];
            $data = Db::table("abouts")->field("tag,classid,title,content,imglist")->where("id","=",$id)->find();
            if(!$data){echo ajson("数据异常");die();}
            $classid = $data['classid'];
            if($data['tag'] == 1){
                if($data['imglist']){
                    $path = "upload/".$data['title']."/".winDz($data['imglist']);
                    if(file_exists($path)){
                        unlink($path);
                    }
                }
                $tag = Db::table('abouts')->delete($id);
                if(!$tag){echo ajson("删除数据异常");die();}
                if(!Db::table('abouts')->where('classid','=',$classid)->find()){
                    Db::table('classes')->where('classid','=', $classid)->delete();
                }
            }else{
                if($data['content']){
                    $imgData = getImgSrc($data['content']);
                    if($imgData){
                        foreach ($imgData as $value) {
                            $path = winDz("upload/image/".$value);
                            if(file_exists($path)){
                                unlink($path);
                            }
                        }
                    }
                    $tag = Db::table('abouts')->delete($id);
                    if(!$tag){echo ajson("删除数据异常");die();}
                    Db::table('classes')->where('classid','=', $classid)->delete();
                }
            }

        }
        $tag = Db::table('abouts')->delete($ids);
        if($tag){
            echo ajson(1);die();
        }
        echo ajson(2);die();
    }
}
