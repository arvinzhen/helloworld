<?php

namespace app\index\controller;

use think\Request;
use think\Controller;
use think\Db;
use app\index\controller\Common;

class Company extends Common
{
    protected $xianshi = 3;
    public function index($id=10)
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
        $res = Db::table('company')->field('id,title,content,releasetime,viewpage')->where('classid','=',$classid)->find();
        $res['releasetime'] = sj($res['releasetime']);
        $this->assign('alllist',$res);
        return $this->fetch('alllist')->getContent();
    }

    public function addv($id){
        $res = Db::table('company')->field('viewpage')->where('id','=',$id)->find();
        if(empty($res)){
            die();
        }
        $views = $res['viewpage'] + 1;
        Db::table('company')->where('id','=',$id)->data(['viewpage'=>$views])->update();
        die();
    }

}