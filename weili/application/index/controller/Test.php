<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Test extends Controller
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
                    $link = "/index/".$this->alltype[$i][1]."/".$res[$j]['id'].".html";
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

}
