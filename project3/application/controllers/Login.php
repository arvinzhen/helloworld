<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller{
    public function __construct(){
        parent::__construct();
    }

    public function index(){
        $addition = "";
        if(isLogin()){
            $url = site_url('admin/allin');
            $addition = "<p>当前已登入,直达<a href='$url' target='_top'>管理主页</a></p>";
        }
        $data = ['addition'=>$addition];
        $this->load->view('login',$data);
    }

    public function checklogin(){
        $username = $this->input->post('username');
        $userpwd = $this->input->post('userpwd');
        $userpwd = jiami($userpwd);
        $sql = "select userpwd from yt_users where username='$username'";
        $query = $this->db->query($sql);
        if(!$query->row()){
            echo json_encode(['state'=>'error']);die();
        }
        $pwd = $query->row()->userpwd;
        if($pwd == $userpwd){
            checkin($username);
            echo json_encode(['state'=>1]);die();
        }
        echo json_encode(['state'=>'error']);die();
    }

    public function quit(){
        $this->session->unset_userdata('username');
        if(!$this->session->has_userdata('username')){
            echo "<script>alert('退出成功!');</script>";
            header("location:".base_url('login'));
            die();
        }
    }
}