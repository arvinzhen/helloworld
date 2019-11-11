<?php
    function ohno($r){
        echo "<pre>";print_r($r);echo "</pre>";die();
    }

    function houzhui($t){
        return substr($t,strripos($t,'.'));
    }

    function jiami($str){
		$str = md5($str);
		$str = sha1($str);
		return $str;
	}

    function checkLogin(){
        $CI =& get_instance();
        if(!$CI->session->has_userdata('username')){
            header("location:".base_url("login"));
            die();
        }
    }

    function isLogin(){
        $CI =& get_instance();
        if($CI->session->userdata('username')){
            return true;
        }
        return false;
    }

    function checkin($str){
        $CI =& get_instance();
        $CI->load->library('session');
        $CI->session->set_userdata('username',$str);
        // header("location:".base_url("admin/allin"));  ???没有跳转
    }

    function fenlei(&$str,$space="",$pid=0){
        if($pid != 0){
            $space .= "-----";
        }else{$space .= "|-";}
        $CI =& get_instance();
        $sql = "select id,pid,title from yt_classes where classid=0 and pid='$pid' order by type asc";
        $query = $CI->db->query($sql);
        if($query->result()){
            foreach ($query->result() as $value) {//完全可以把 有无初始值的判断 先再主函数判断,再执行迭代 减少迭代比较次数
                $str .= "<option value='$value->id'>";
                $str .= $space."&gt;$value->title</option>";
                fenlei($str,$space,$value->id);
            }
        }
    }

    function fenleiT($str,$space="",$pid=0){
        $CI =& get_instance();
        $sql = "select id,pid,title from yt_classes where classid=0 and pid='$pid'";
        $query = $CI->db->query($sql);
        if($query->result()){
            foreach ($query->result() as $value) {//完全可以把 有无初始值的判断 先再主函数判断,再执行迭代 减少迭代比较次数
                $str .= "<tr><td>";
                if($pid != 0){
                    $space .= "---";
                }else{$space .= "|-";}
                $str .= $space."&gt;$value->title</td>";
                $str .= "<td><a onclick=\"xadmin.open('插入','".site_url('admin/classes/add?id=$value->id')."')\" href='javascript:;'></td>";
                $str .= "</tr>";
                fenlei($str,$space,$value->id);
            }
        }
    }

    function addFenleiSave($pid,$title){
        $CI =& get_instance();
        $sql = "select classid,type from yt_classes where id='$pid'";
        $query = $CI->db->query($sql);
        if($query->row() && $query->row()->classid == 0){
            $data = array('pid'=>$pid,'classid'=>0,'type'=>$query->row()->type,'title'=>$type);
            $tag = $CI->db->insert("yt_classes",$data);
            if($tag){
                echo json_encode(['state'=>1]);die();
            }
            echo json_encode(['state'=>'添加失败']);die();
        }
        echo json_encode(['state'=>'严重BUG,请联系管理员']);die();
    }
?>