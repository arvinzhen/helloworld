<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Users extends CI_Controller{
        public function __construct(){
            parent::__construct();
            checkLogin();
        }

        public  function index(){
            $this->load->model('admin/allusers');
            $res = $this->allusers->zhuye();
            $this->load->view('admin/users/index',$res);
        }

        public function add(){
            $this->load->view('admin/users/add');
        }

        public function detail(){
            $username = $this->session->userdata('username');
            $sql = "select realname,releasetime from yt_users where username='$username'";
            $query = $this->db->query($sql);
            if(!$query->row()){
                echo "错误";die();
            }
            $realname = $query->row()->realname;
            $releasetime = date("Y-m-d H:i:s",$query->row()->releasetime);
            $data = array('username'=>$username,'realname'=>$realname,'regtime'=>$releasetime);
            $this->load->view('admin/users/detail',$data);
        }

        public function add_save(){
            if($this->input->post("username")){
                $username = $this->input->post("username");
            }else{echo json_encode(['state' => '姓名不能为空']);die();}//处理空用户名
            if($this->input->post("realname")){
                $realname = $this->input->post("realname");
            }else{echo json_encode(['state' => '真实姓名不能为空']);die();}//处理空真实姓名
            $sql = "select id from yt_users where username='$username' or realname='$realname'";
            $query = $this->db->query($sql);
            $res = $query->result_array();
            if($res){echo json_encode(['state' => '重名了哦']);die();}//处理重名
            if($this->input->post("pass")){
                $userpwd = $this->input->post("pass");
            }else{echo json_encode(['state' => '密码不能为空']);die();}//处理空密码
            if($this->input->post("repass") && $this->input->post("repass") == $userpwd){
                $repwd = $this->input->post("repass");
            }else{echo json_encode(['state' => '两次密码不一样']);die();}//处理两次密码不一致
            $userpwd = jiami($repwd);
            $releasetime = time();
            $data = array('username'=>$username,'userpwd'=>$userpwd,'realname'=>$realname,'releasetime'=>$releasetime);
            $tag = $this->db->insert("yt_users", $data);
            if($tag){
                echo json_encode(['state' => '1']);//, 'time' => $ak
            }else{
                echo json_encode(['state' => '添加失败']);
            }
        }

        public function delete(){
            $ids = $this->input->post('ids');
            if($ids){
                $tag=true;
                for ($i = 0; $i < count($ids) & $tag; $i++) {//,$Tag
                    $id = $ids[$i];
                    $tag = $this->db->delete('yt_users',array('id'=>$id));
                }
                if($tag){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'删除失败']);die();
            }
            $id = $this->input->post('id');
            if($id){
                $tag = $this->db->delete('yt_users',['id'=>$id]);
                if($tag){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'删除了,没删除成功.']);die();
            }
            echo json_encode(['state'=>"没有删除项哦"]);die();
        }

        public function update(){
            $id = $this->input->get('id');
            $sql = "select username,realname from yt_users where id='$id'";
            $query = $this->db->query($sql);
            if(!$query->row()) {
                echo '数据被破坏';die();
            }
            $username = $query->row()->username;
            $realname = $query->row()->realname;
            $data = array('username'=>$username,'realname'=>$realname,'id'=>$id);
            $this->load->view('admin/users/update',$data);
        }

        public function update_save(){
            $id = $this->input->post('id');
            $username = $this->input->post('username');
            $realname = $this->input->post('realname');
            $sql = "select username,realname from yt_users where id='$id'";
            $query = $this->db->query($sql);
            $oldname = $query->row()->username;
            $oldrname = $query->row()->realname;
            $tag = false;//修改与否
            if($oldname != $username){
                $tag = true;
                $this->db->set('username',$username);
            }
            if($oldrname != $realname){
                $tag = true;
                $this->db->set('realname',$realname);
            }
            if($tag){
                $this->db->where('id',$id);
                $tag1 = $this->db->update('yt_users');
                if($tag1){
                    echo json_encode(['state'=>1]);die();
                }
            }
            echo json_encode(['state'=>'没有变动']);die();

        }

        public function edit_pwd(){
            $id = $this->input->get('id');
            if(!$id){
                echo '未接受到修改项';die();
            }
            $sql = "select username,realname from yt_users where id='$id'";
            $query = $this->db->query($sql);
            if(!$query->row()){
                echo "数据被破坏";die();
            }
            $data = array('username'=>$query->row()->username,'realname'=>$query->row()->realname,'id'=>$id);
            $this->load->view('admin/users/edit_pwd',$data);
        }

        public function editpwd_save(){
            $id = $this->input->post('id');
            $pass = $this->input->post('pass');
            $repass = $this->input->post('repass');
            // $sql = "select userpwd from yt_users where id='$id'";
            // $query = $this->db->query($sql);
            // $userpwd = $query->row()->userpwd;
            if($pass != $repass){
                echo json_encode(['state'=>'两次密码不一样']);die();
            }
            $userpwd = jiami($pass);
            $this->db->set('userpwd',$userpwd);
            $this->db->where('id',$id);
            $tag = $this->db->update('yt_users');
            if($tag){
                echo json_encode(['state'=>1]);die();
            }
            echo json_encode(['state'=>'密码没有变动']);die();
        }
    }

?>