<?php

namespace app\index\controller;

use think\Request;
use think\Controller;
use think\Db;
use app\index\controller\Common;

class Abouts extends Common
{
    protected $xianshi = 1;
    public function index($id=1)
    {
        $datamid = $this->midnav($id);
        $newscontent = $this->alllist($id);
        $this->assign('datamid',$datamid);
        $this->assign('newscontent',$newscontent);
        return $this->fetch('index');
    }

    public function midnav($pz){
        $this->assign('pz',$pz);
        $res = Db::table('classes')->field('id,title')->where('pid','=',0)->where('type','=',$this->xianshi)->select();
        $this->assign('datamidnav',$res);
        return $this->fetch('midnav')->getContent();
    }

    public function alllist($id){
        $res1 = Db::table('classes')->field('classid')->where('pid','=',$id)->find();
        if(empty($res1)){
            return "空";
        }
        $classid = $res1['classid'];
        $tags = Db::table('abouts')->field('tag')->where('classid','=',$classid)->find();
        if(empty($tags)){
            return "空";
        }
        $tag = $tags['tag'];
        $this->assign('tag',$tag);
        if($tag){
            $data = [];
            $res = Db::table('abouts')->field('title,imglist')->where('classid','=',$classid)->select();
            foreach ($res as $v) {
                $path = '/upload/'.$v['title']."/".winDz($v['imglist']);
                $data[] = ['imglist'=>$path];
            }
            $this->assign('alllist',$data);
        }else{
            $res = Db::table('abouts')->field('content')->where('classid','=',$classid)->find();
            $this->assign('alllist',$res);
        }
        return $this->fetch('alllist')->getContent();
    }

}