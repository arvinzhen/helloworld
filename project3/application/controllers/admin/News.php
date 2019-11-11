<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class News extends CI_Controller{
    public function __construct(){
        parent::__construct();
    }

    public function index(){
        $this->load->model('admin/allnews');
        $data = $this->allnews->zhuye();
        $this->load->view("admin/news/index",$data);
    }

    public function add(){
        $strOP = "";
        $sql = "select id,title from yt_classes where classid=0 and pid>0 and type=1";
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
        $this->load->view("admin/news/add",$data);
    }

    public function add_save(){
        // $data = $this->input->post();
        if(!$this->input->post('title')){
            echo json_encode(['state' => '标题不能为空']);die();
        }
        if(!$this->input->post('ptitle')){
            echo json_encode(['state' => '类别不能为空']);die();
        }
        $title = $this->input->post('title');
        $pid = $this->input->post('ptitle');
        $content = $this->input->post('content');
        $sql = "select classid from yt_classes order by classid desc limit 0,1";
        $query = $this->db->query($sql);
        $classid = $query->row()->classid + 1;
        $releasetime = time();
        $data1 = ['pid'=>$pid,'classid'=>$classid,'type'=>1,'title'=>$title];//classes
        $tag1 = $this->db->insert('yt_classes',$data1);
        if($tag1){
            $data2 = ['classid'=>$classid,'title'=>$title,'content'=>$content,'releasetime'=>$releasetime];//news
            $tag2 = $this->db->insert('yt_news',$data2);
            if($tag2){
                echo json_encode(['state'=>1]);die();
            }
        }
        echo json_encode(['state'=>'添加失败']);die();
    }

    public function delete(){
        $ids = $this->input->post('ids');
        if($ids){
            $table = array('yt_news','yt_classes');
            $tag=true;
            for ($i = 0; $i < count($ids) & $tag; $i++) {//,$Tag
                $id = $ids[$i];
                $sql = "select classid from yt_news where id=$id";
                $query = $this->db->query($sql);
                if(!$query->row()){continue;}
                $classid = $query->row()->classid;
                $tag = $this->db->delete('yt_classes',array('classid'=>$classid));
                $tag = $this->db->delete('yt_news',array('classid'=>$classid));
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
            $tag2 = $this->db->delete('yt_news',['id'=>$id]);
            if($tag1 && $tag2){
                echo json_encode(['state'=>1]);die();
            }
            echo json_encode(['state'=>'删除了,没删除成功.']);die();
        }
        echo json_encode(['state'=>"没有删除项哦"]);die();
    }

    public function detail(){
        $classid = $this->input->get('classid');$strzhuti = "";
        $res = array('id'=>"空",'title'=>"空",'content'=>"空",'releasetime'=>"空",'pageviews'=>"空",'type'=>"空");
        if($classid){
            $sql = "select id,title,content,releasetime,pageviews from yt_news where classid='$classid'";
            $query = $this->db->query($sql);
            if($query->row()){
                $data = $query->row();
                $releasetime = date("Y-m-d H:i:s",$data->releasetime);
                $res = array('id'=>$data->id,'title'=>$data->title,'content'=>$data->content,'releasetime'=>$releasetime,'pageviews'=>$data->pageviews);
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
        $this->load->view('admin/news/detail',$res);
    }

    public function update(){
       $this->load->model('admin/allnews');
       $res2 = $this->allnews->genxin();
        $this->load->view('admin/news/update',$res2);
    }

    public function update_save(){
        $this->load->model('admin/allnews');
        $this->allnews->edit();
    }
}