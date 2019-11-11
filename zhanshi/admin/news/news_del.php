<?php
    include("../../zhanshi.php");
    checkLogin();
    if(!$_POST){
        echo json_encode(['state' => '没有获得删除项']);die();
    }else{
        if(isset($_POST['classid'])){//删除单个
            $id = $_POST['id'];
            $classid = $_POST['classid'];
            $sql = "delete from news where id=$id";
            $tag = sqlexec("zhanshi",$sql);
            $sql = "delete from classes where classid=$classid";
            $tag2 = sqlexec("zhanshi",$sql);
            if($tag && $tag2){
                echo json_encode(['state' => 1]);die();
            }
            echo json_encode(['state' => '发生单个未知错误']);die();
        }else{//删除多个
            $ids = implode(',',$_POST['ids']);
            $sql = "select classid from news where id in($ids)";
            $res = sqlquery("zhanshi",$sql);
            if($res){
                $arr = [];
                foreach($res as $value){
                    $arr[] = $value['classid'];
                }
                $classids = implode(',',$arr);
                $sql = "selete from classes where classid in($classids)";
            }
            $sql = "delete from news where id in($ids)";
            $tag = sqlexec("zhanshi",$sql);
            if($tag){
                echo json_encode(['state' => 1]);die();
            }
            echo json_encode(['state' => '发生未知错误']);die();
        }
    }
?>