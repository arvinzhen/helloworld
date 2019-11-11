<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Message extends CI_Controller{
        public function __construct(){
            parent::__construct();
            checkLogin();
        }

        public  function index(){
            $this->load->model('admin/allmessage');
            $res = $this->allmessage->zhuye();
            $this->load->view('admin/message/index',$res);
        }

        public function detail(){
            $id = $this->input->get('id');
            if(!$id){
                echo "未接受到修改项";die();
            }
            $sql = "select name,tel,content,releasetime from yt_message where id='$id'";
            $query = $this->db->query($sql);
            if(!$query->row()){
                echo "错误";die();
            }
            $name = $query->row()->name;
            $tel = $query->row()->tel;
            $content = $query->row()->content;
            $al = substr($query->row()->releasetime,0,10);
            $regtime = date("Y-m-d H:i:s",$al);
            $data = array('name'=>$name,'tel'=>$tel,'regtime'=>$regtime,'content'=>$content);
            $this->load->view('admin/message/detail',$data);
        }

        public function delete(){
            $ids = $this->input->post('ids');
            if($ids){
                $tag=true;
                for ($i = 0; $i < count($ids) & $tag; $i++) {//,$Tag
                    $id = $ids[$i];
                    $tag = $this->db->delete('yt_message',array('id'=>$id));
                }
                if($tag){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'删除失败']);die();
            }
            $id = $this->input->post('id');
            if($id){
                $tag = $this->db->delete('yt_message',['id'=>$id]);
                if($tag){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'删除了,没删除成功.']);die();
            }
            echo json_encode(['state'=>"没有删除项哦"]);die();
        }

        public function add_save(){
            if($this->input->post()){
                 $name = $this->input->post('name');
                 if(!$name){
                     echo json_encode(['state'=>'请填写您的姓名']);die();
                 }
                 $tel = $this->input->post('tel');
                 if(!$tel){
                     echo json_encode(['state'=>'电话必须填写']);die();
                 }
                 $content = $this->input->post('content');
                 $regtime = time();
                 $data = array('name'=>$name,'tel'=>$tel,'content'=>$content,'releasetime'=>$regtime);
                 $tag = $this->db->insert("yt_message",$data);
                 if($tag){
                     echo json_encode(['state'=>1]);die();
                 }
                 echo json_encode(['state'=>'请联系管理员,发送失败']);die();
            }
        }

    }

?>