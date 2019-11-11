<?php include("../../zhanshi.php");
    checkLogin();
    if($_POST){
        $id = $_POST['id'];//接收id
        $sql = "select name,content,classid from news where id=$id";
        $res = sqlquery("zhanshi",$sql,false);
        if(!$res){
            echo json_encode(['state' => '本条数据发生错误']);die();
        }
        $classid = $res['classid'];//获得classid
        $name = $_POST['title'];//接收标题
        if(!$name){echo json_encode(['state' => '标题不能为空']);die();}
        $content = $_POST['html'];//接收内容
        $ziduan = "";$tag2 = 1;$tag = 0;//初始化
        if($name != $res['name']){//比较标题
            $ziduan .= ",name='$name'";
            $sql = "update classes set name='$name' where classid='$classid'";
            $tag2 = sqlexec("zhanshi",$sql);
        }
        if($content != $res['content']){//比较内容
            $ziduan .= ",content='$content'";
        }
        if($ziduan){
            $sql = "update news set ".substr($ziduan,1)." where id=$id";
            $tag = sqlexec("zhanshi",$sql);
            if($tag2 && $tag){
                echo json_encode(['state' => 1]);die();
            }
        }
        echo json_encode(['state' => '没发生变化哦']);die();
    }else{
        echo json_encode(['state' => '发生致命错误']);
        die();
    }
    die();
?>