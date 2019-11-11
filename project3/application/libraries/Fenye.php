<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Fenye{
    protected $str = "";
    protected $limit = "";
    public function __construct($params){
        //CI参数
        $allnum = $params['allnum'];
        $curPage = $params['curPage'];
        $addr = $params['addr'];
        $perPage = isset($params['perPage'])?$params['perPage']:10;
        //参数
        $allPage = ceil($allnum / $perPage);
        if(!$allPage){return "";die();}
        $this->limit = " limit $curPage,$perPage";
        $addr .= "?page=";
        $this->str = "<div class='page finger'><div>";
        if($curPage > 0){
            $num = $curPage - 1;
            $url = $addr.$num;
            $this->str .= "<a class='prev' href='$url'>&lt;&lt;</a>";
        }else{
            $this->str .= "<a class='prev'>&lt;&lt;</a>";
        }
        for($i = 0; $i < $allPage; $i++){
            $url = $addr.$i;
            $num = $i + 1;
            if($curPage != $i){
                $this->str .= "<a href='$url' class='num'>$num</a>";
            }else{
                $this->str .= "<span class='current'>$num</span>";
            }
        }
        if($curPage < $allPage - 1){
            $num = $curPage + 1;
            $url = $addr.$num;
            $this->str .= "<a href='$url' class='next'>&gt;&gt;</a>";
        }else{
            $this->str .= "<a class='next'>&gt;&gt;</a>";
        }
        $this->str .= "</div></div>";
    }

    public function getFy(){
        return $this->str;
    }

    public function getLimit(){
        return $this->limit;
    }
}
?>