<?php
namespace app\index\controller;
use think\Controller;
use think\facade\Hook;
use think\facade\Cache;
use think\Db;
class Index extends Controller
{
    protected $alltype = [
        1=>['关于我们','abouts']
        ,2=>['新闻资讯','news']
        ,3=>['企业服务','company']
        ,4=>['员工服务','staff']
        ,5=>['求职招聘','job']
        ,6=>['联系我们','message']
        ,7=>['下载中心','download']
    ];
    public function index()
    {
        $top = $this->top();
        $bottom = $this->bottom();
        $dongtai = $this->dongtai();
        $dtmid = $this->dtmid();
        $indexqzzp = $this->qzzp();
        $this->assign('top',$top);
        $this->assign('bottom',$bottom);
        $this->assign('dongtai',$dongtai);
        $this->assign('dtmid',$dtmid);
        $this->assign('indexqzzp',$indexqzzp);
        return $this->fetch('index');
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }

    public function top(){
        $data = [];
        $res = Db::table('classes')->where('pid','=',0)->order('type','asc')->select();
        if(empty($res)){
            foreach ($this->alltype as $value) {
                $data[]['title'] = $value[0];
                $data[]['link'] = url($value[1]);
                $data[]['coin'] = "";
            }
           $this->assign('data',$this->alltype);
           return $this->fetch('top')->getContent();
           die();
        }
        $j = 0;$allnum = count($res) - 1;
        for($i = 1; $i < 8; $i++){
            //顶级
            $title = $this->alltype[$i][0];
            $link = "/index/".$this->alltype[$i][1].".html";
            $data[$i-1]['title'] = $title;
            $data[$i-1]['link'] = $link;
            //次级
            $str = "<ul class='buxianshi xia-nav'>";
            if($res[$j]['type'] != 5){
                while($res[$j]['type'] == $i && $j < $allnum){
                    $link = "/index/".$this->alltype[$i][1]."/index/".$res[$j]['id'].".html";
                    $str .= "<li><a href='".$link."'>".$res[$j]['title']."</a></li>";
                    //#
                    $j++;
                }
            }else{
                while($res[$j]['type'] == $i && $j < $allnum){
                    $j++;
                }
            }
            $str .= "</ul>";
            $data[$i-1]['coin'] = $str;
        }
        // $data[0][1]['link'] = url('@index/abouts');
        // $data[0][2]['link'] = url('@index/abouts/culture');
        // $data[0][3]['link'] = url('@index/abouts/honor');
        // $data[5][1]['link'] = url('@index/message');
        // $data[5][2]['link'] = url('@index/message/online');
        $this->assign('data',$data);
        return $this->fetch('top')->getContent();
    }

    public function bottom(){
        return $this->fetch('bottom')->getContent();
    }

    public function dongtai(){
        $dt = Db::table('classes')->field('classid')->where('pid','=',4)->limit(0,3)->select();
        $this->assign('dt',$dt);
        if(!empty($dt)){
            $data = [];
            foreach ($dt as $v) {
                $data[] = $v['classid'];
            }
            $ids = implode(",",$data);
            $res = Db::table('news')->field('classid,title,intro,content')->where('classid','in',$ids)->select();
            $data1 = [];
            foreach ($res as $value) {
                if($value['title'] && strlen($value['title']) > 42){
                    $value['title'] = substr($value['title'], 0,27) . "...";
                }
                if($value['intro'] && strlen($value['intro']) > 81){
                    $value['intro'] = substr($value['intro'], 0,27) . "...";
                }
                $imglist = getImgSrc($value['content'],-45);
                if($imglist){
                    $value['content'] = winDz($imglist[0]);
                }else{
                    $value['content'] = "/static/images/default1.jpg";
                }
                $data1[] = ['classid'=>$value['classid'],'title'=>$value['title'],'intro'=>$value['intro'],'content'=>$value['content']];
            }
            $this->assign('dt',$data1);
        }
        $kx = Db::table('classes')->field('classid')->where('pid','=',5)->limit(0,3)->select();
        $this->assign('kx',$kx);
        if(!empty($kx)){
            $data = [];
            foreach ($kx as $v) {
                $data[] = $v['classid'];
            }
            $ids = implode(",",$data);
            $res = Db::table('news')->field('classid,title,intro,content')->where('classid','in',$ids)->select();
            $data2 = [];
            foreach ($res as $value) {
                if($value['title'] && strlen($value['title']) > 42){
                    $value['title'] = substr($value['title'], 0,27) . "...";
                }
                if($value['intro'] && strlen($value['intro']) > 81){
                    $value['intro'] = substr($value['intro'], 0,27) . "...";
                }
                $imglist = getImgSrc($value['content'],-45);
                if($imglist){
                    $value['content'] = winDz($imglist[0]);
                }else{
                    $value['content'] = "/static/images/default1.jpg";
                }
                $data2[] = ['classid'=>$value['classid'],'title'=>$value['title'],'intro'=>$value['intro'],'content'=>$value['content']];
            }
            $this->assign('kx',$data2);
        }
        return $this->fetch('dongtai')->getContent();
    }

    public function dtmid(){
        $dt = Db::table('classes')->field('classid')->where('pid','=',6)->limit(0,7)->select();
        $this->assign('dt',$dt);
        if(!empty($dt)){
            $data = [];
            foreach ($dt as $v) {
                $data[] = $v['classid'];
            }
            $ids = implode(",",$data);
            $res = Db::table('news')->field('classid,title')->where('classid','in',$ids)->select();
            $data1 = [];
            foreach ($res as $value) {
                if($value['title'] && strlen($value['title']) > 63){
                    $value['title'] = substr($value['title'], 0,63) . "...";
                }
                $data1[] = ['classid'=>$value['classid'],'title'=>$value['title']];
            }
            $this->assign('dtmid',$data1);
        }
        return $this->fetch('dtmid')->getContent();
    }

    public function qzzp(){
        $res = Db::table('offers')->field('name,dpm')->order('id','asc')->limit(0,6)->select();
        $this->assign('qzzp',$res);
        return $this->fetch('qzzp')->getContent();
    }

}
