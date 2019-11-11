<?php 
    include("../../zhanshi.php");
    checkLogin();
    if($_POST){
        if(isset($_POST['visit'])){
            $vis = $_POST['visit']+1;
            $classid = $_POST['classid'];
            $sql = "update news set visit='$vis' where classid=$classid";
            sqlexec("zhanshi",$sql);
            die();
        }
        $name = $_POST['title'];
        if(!$name){
            echo json_encode(['state' => '标题不能为空']);die();
        }
        $sontype = isset($_POST['sontype'])?$_POST['sontype']:'';
        if(!$sontype){
            echo json_encode(['state' => '你咋进来的']);die();
        }
        $content = $_POST['html'];
        $releasetime = time();
        $sql = "select classid from classes order by classid desc limit 0,1";
        $classid = sqlquery("zhanshi",$sql,false)['classid'] + 1;
        $sql = "insert into news set name='$name',content='$content',classid='$classid',releasetime='$releasetime'";
        $tag = sqlexec("zhanshi",$sql);
        $sql = "insert into classes set name='$name',type='1',classid='$classid',sontype='$sontype'";
        $tag2 = sqlexec("zhanshi",$sql);
        if($tag && $tag2){
            echo json_encode(['state' => 1]);die();
        }
        echo json_encode(['state' => '发生了未知错误']);die();
    }

    echo json_encode(['state' => '没有获得数据']);die();
?>