<?php 
    defined('BASEPATH') OR exit('No direct script access allowed');
    class product extends CI_Controller{
        public function __construct(){
            parent::__construct();
        }

        public function index(){
            $this->load->model('admin/allproduct');
            $res2 = $this->allproduct->zhuye();
            $this->load->view('admin/product/index',$res2);
        }

        public function add(){
            $strOP = "";
            $sql = "select id,title from yt_classes where classid=0 and pid>0 and type=2";
            $query = $this->db->query($sql);
            $res = $query->result();
            if($res){
                foreach ($res as $value) {
                    $strOP .= "<option value='$value->id'>";
                    $strOP .= $value->title;
                    $strOP .= "</option>";
                }
            }
            $data = ['str'=>$strOP];
            $this->load->view("admin/product/add",$data);
        }

        public function add_save(){
         $this->load->model('admin/allproduct');
         $this->allproduct->adds();   
        }

        public function delete(){
            $ids = $this->input->post('ids');
            if($ids){
                $table = array('yt_product','yt_classes');
                $tag=true;
                for ($i = 0; $i < count($ids) & $tag; $i++) {//,$Tag
                    $id = $ids[$i];
                    $sql = "select classid from yt_product where id=$id";
                    $query = $this->db->query($sql);
                    if(!$query->row()){continue;}
                    $classid = $query->row()->classid;
                    $tag = $this->db->delete('yt_classes',array('classid'=>$classid));
                    $tag = $this->db->delete('yt_product',array('classid'=>$classid));
                    // $this->db->where('classid',$classid);
                    // $tag = $this->db->delete($table);每次都返回false ??????????
                    //可以判断删除是否成功来截止删除 ??如何恢复
                }
                if($tag){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'删除失败']);die();
            }
            $id = $this->input->post('id');
            $classid = $this->input->post('classid');
            if($id && $classid){
                $tag1 = $this->db->delete('yt_classes',['classid'=>$classid]);
                $tag2 = $this->db->delete('yt_product',['id'=>$id]);
                if($tag1 && $tag2){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'删除了,没删除成功.']);die();
            }
            echo json_encode(['state'=>"没有删除项哦"]);die();
        }
    
        public function detail(){
            $classid = $this->input->get('classid');$strzhuti = "";
            $res = array('id'=>"空",'classid'=>"空",'title'=>"空",'img'=>"htpp://hj.com/public/upload/images/default.jpg",'type'=>"空");
            if($classid){
                $sql = "select id,title,img from yt_product where classid='$classid'";
                $query = $this->db->query($sql);
                if($query->row()){
                    $data = $query->row();
                    $res = array('id'=>$data->id,'classid'=>$classid,'title'=>$data->title,'img'=>"http://hj.com/public/upload/images/".$data->img);
                }
                $sql = "select pid from yt_classes where classid='$classid'";
                $query = $this->db->query($sql);
                if($query->row()){
                    $id = $query->row()->pid;
                    $sql = "select title from yt_classes where id='$id'";
                    $query = $this->db->query($sql);
                    if($query->row()){
                        $res['type'] = $query->row()->title;
                    }
                }
            }
            $this->load->view('admin/product/detail',$res);
        }
    
        public function update(){
           $this->load->model('admin/allproduct');
           $res2 = $this->allproduct->genxin();
            $this->load->view('admin/product/update',$res2);
        }
    
        public function update_save(){
            $this->load->model('admin/allproduct');
            $this->allproduct->edit();
        }
    }
?>