<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Classes extends CI_Controller{
        public function __construct(){
            parent::__construct();
            checkLogin();
        }

        public function delete(){
            $this->load->model('admin/allclass');
            $this->allclass->del();
        }

        public function edit(){
            $this->load->model('admin/allclass');
            $this->allclass->update();
        }

        public function index(){
            $this->load->model('admin/allclass');
            $arr = $this->allclass->zhuye();
            $this->load->view('admin/classes/index',$arr);
        }

        public function add(){
            $strS = "";
            if($this->input->get('id')){
                $id = $this->input->get('id');
                $sql = "select title from yt_classes where id='$id'";
                $query = $this->db->query($sql);
                $title = $query->row()->title;//没判断id值是否合法
                $strS .= "<option>$title</option>";
            }else{
                fenlei($strS);
            }
            $data = ['str'=>$strS];
            $this->load->view("admin/classes/add",$data);
        }

        public function addsave(){
            $pid = $this->input->post('ptitle');
            $sql = "select type from yt_classes where id='$pid'";
            $query = $this->db->query($sql);
            $type = $query->row()->type;
            if(!$pid){
                $pid=0;
                $sql = "select type from yt_classes where pid=0 order by type desc limit 0,1";
                $query = $this->db->query($sql);
                if($query->row()){
                    $type = $query->row()->type + 1;
                }
            }
            $title = $this->input->post('title');
            if(!$title){echo json_encode(['state'=>'请不要非法传值']);die();}
            $data = ['pid'=>$pid,'classid'=>0,'type'=>$type,'title'=>$title];
            $tag = $this->db->insert('yt_classes',$data);
            if($tag){
                echo json_encode(['state'=>1]);die();
            }
            echo json_encode(['state'=>'添加失败,请联系管理员']);die();
        }
    }

?>
