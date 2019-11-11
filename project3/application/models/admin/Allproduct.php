<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Allproduct extends CI_Model{
        public function __construct(){
            parent::__construct();
        }

        public function zhuye(){
            $curPage = 0;$fenyeStr = "";$zhutiStr = "";$condition = "";//初始化
            if($this->input->get('page')){
                $curPage = $this->input->get('page');
            }
            //处理搜索
            //分页 并且确定有无数据
            $sql = "select count(id) as t from yt_product ";
            $search = $this->input->get('title');
            if($search){
                $condition .= "where title like '%$search%'";
            }
            $sql .= $condition;
            $query = $this->db->query($sql);
            $allNum = $query->row()->t;//总个数
            if($allNum){ 
                $params = ['allnum'=>$allNum,'curPage'=>$curPage,'addr'=>'/admin/product'];//,'perPage'=>1
                //分页开始 向Fenye传$params
                $this->load->library("fenye",$params);
                $fenyeStr .= $this->fenye->getFy();
                //分页结束
                //加载内容
                $sql = "select id,classid,title from yt_product ".$condition.$this->fenye->getLimit();
                $query = $this->db->query($sql);
                //if($query->result()) 需要的话可以加
                foreach ($query->result() as $value) {
                    $editUrl = site_url('/admin/product/update?classid='.$value->classid);
                    $infoUrl = site_url('/admin/product/detail?classid='.$value->classid);
                    $zhutiStr .= "<tr>";
                    $zhutiStr .= "<td style='color:white;'>占位
                    <input type='checkbox' class='ids' name='ids[]' lay-skin='primary' value='$value->id'></td>";
                    $zhutiStr .= "<td>$value->classid</td>";
                    $zhutiStr .= "<td>$value->title</td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"xadmin.open('编辑','$editUrl')\" href='javascript:;'>编辑<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"xadmin.open('详情','$infoUrl')\" href='javascript:;'>详情<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"del($value->id,$value->classid)\" href='javascript:;'>删除<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "</tr>";
                }
            }else{
                $zhutiStr .= "暂时没有内容,添加一些吧!";
            }
            return ['fy'=>$fenyeStr,'content'=>$zhutiStr];
        }
        
        public function adds(){
            if($_FILES){
                $pic = $_FILES['file'];
                if($pic['error']){
                    echo json_encode(['state'=>'文件上传失败','src'=>'']);die();
                }
                $name = time().rand(100,999).houzhui($pic['name']);
                $tag = move_uploaded_file($pic['tmp_name'],"public/upload/images/".$name);
                if($tag){
                    $src = base_url("/public/upload/images/");
                    // ohno($src);
                    $src .= $name;
                    echo json_encode(['state'=>1,'src'=>$src]);die();
                }
                echo json_encode(['state'=>'文件入库失败','src'=>'']);die();
            }
            if($this->input->post()){
                $data = array();
                //先处理classes
                $pid = $this->input->post('ptitle');
                if(!$pid){
                    echo json_encode(['state'=>'类别为必选项']);die();
                }
                $data['pid'] = $pid;
                //处理type
                // $sql = "select type from yt_classes where id='$pid'";
                // $query = $this->db->query($sql);
                // $type = $query->row()->type;
                $data['type'] = '2';
                //处理classid
                $sql = "select classid from yt_classes order by classid desc limit 0,1";
                $query = $this->db->query($sql);
                if(!$query->row()){
                    echo json_encode(['state'=>'重大BUG,请联系管理员']);die();
                }
                $classid = $query->row()->classid + 1;
                $data['classid'] = $classid;
                //处理标题
                $title = $this->input->post('title');
                if(!$title){
                    echo json_encode(['state'=>'标题必须得有']);die();
                }
                $data['title'] = $title;
                $this->db->insert('yt_classes',$data);//应该判断成功与否,再执行
                //处理product
                //处理图片
                $img = $this->input->post('img');
                if($img){
                    $data['img'] = substr($img,strripos($img,"/")+1);
                }
                unset($data['pid']);
                unset($data['type']);
                $tag = $this->db->insert('yt_product',$data);
                if($tag){
                    echo json_encode(['state'=>1]);die();
                }
                echo json_encode(['state'=>'添加失败,数据错误']);die();
            }
            echo json_encode(['state'=>'非法进入']);die();
         
        }

        public function genxin(){
            $classid = $this->input->get('classid');
            if(!$classid){
                echo "<script>alert('没接收到修改项');history.back();</script>";die();
            }
            //初始化
            $strzhuti = "";$type = "";
            $res2 = array('classid'=>$classid,'title'=>"空",'img'=>"http://hj.com/public/upload/images/default.jpg",'str'=>"空");
            //selected
            $sql = "select pid from yt_classes where classid='$classid'";
            $query = $this->db->query($sql);
            if($query->row()){
                $pid = $query->row()->pid;
            }
            //option
            $strOP = "";
            $sql = "select id,title,type from yt_classes where classid=0 and pid>0 and type=2";
            $query = $this->db->query($sql);
            $res = $query->result();
            if($res){
                foreach ($res as $value) {
                    $strOP .= "<option value='$value->id'";
                    if($pid == $value->id){
                        $strOP .= " selected>";
                    }else{
                        $strOP .= ">";
                    }
                    $strOP .= $value->title;
                    $strOP .= "</option>";
                }
                $res2['str'] = $strOP;
            }
            // $data = ['str'=>$strOP];
            $sql = "select title,img from yt_product where classid='$classid'";
            $query = $this->db->query($sql);
            if($query->row()){
                $data = $query->row();
                $res2['title'] = $data->title;
                $res2['img'] = "http://hj.com/public/upload/images/".$data->img;
            }
            return $res2;
        }

        public function edit(){
            // ohno($_POST);
            $classid = $this->input->post('classid');
            if(!$classid){
                echo json_encode(['state'=>'未获得修改项目']);die();
            }
            //初始化
            $tag = 0;
            //新旧比较
            $sql = "select pid from yt_classes where classid='$classid'";
            $query = $this->db->query($sql);
            if(!$query->row()){//防止classes
                echo json_encode(['state'=>'数据丢失']);die();
            }
            $pid = $query->row()->pid;
            $ptitle = $this->input->post('ptitle');
            if($pid != $ptitle){
                $sql = "update yt_classes set pid='$ptitle' where classid='$classid'";
                $this->db->query($sql);
            }//类别
            $sql = "select title,img from yt_product where classid='$classid'";
            $query = $this->db->query($sql);
            if(!$query->row()){//防止product
                echo json_encode(['state'=>'数据丢失2']);die();
            }
            $oldtitle = $query->row()->title;
            $title = $this->input->post('title');
            if($title != $oldtitle){
                $this->db->set('title',$title);
                $sql = "update yt_classes set title='$title' where classid='$classid'";
                $this->db->query($sql);//应该先判断 是否修改成功,错误的话,应该先把错误信息存起来,等会打印出来
            }//标题
            $img = $this->input->post('img');
            $img = substr($img,strripos($img,"/"));
            $this->db->set('img',$img);
            $this->db->where('classid',$classid);
            $tag = $this->db->update('yt_product');
            if($tag){
                echo json_encode(['state'=>1]);die();
            }
            echo json_encode(['state'=>'发生了一个更新BUG']);die();
        }
    
    }
?>