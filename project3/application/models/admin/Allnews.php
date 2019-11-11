<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Allnews extends CI_Model{
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
        $sql = "select count(id) as t from yt_news ";
        $search = $this->input->get('title');
        if($search){
            $condition .= "where title like '%$search%'";
        }
        $sql .= $condition;
        $query = $this->db->query($sql);
        $allNum = $query->row()->t;//总个数
        if($allNum){ 
            $params = ['allnum'=>$allNum,'curPage'=>$curPage,'addr'=>'/admin/news'];//,'perPage'=>1
            $this->load->library("fenye",$params);
            $fenyeStr .= $this->fenye->getFy();
            //分页结束
            //加载内容
            $sql = "select id,classid,title,releasetime,pageviews from yt_news ".$condition.$this->fenye->getLimit();
            $query = $this->db->query($sql);
            //if($query->result()) 需要的话可以加
            foreach ($query->result() as $value) {
                $releasetime = date("Y-m-d H:i:s", $value->releasetime);
                $editUrl = site_url('/admin/news/update?classid='.$value->classid);
                $infoUrl = site_url('/admin/news/detail?classid='.$value->classid);
                $zhutiStr .= "<tr>";
                $zhutiStr .= "<td style='color:white;'>占位
                <input type='checkbox' class='ids' name='ids[]' lay-skin='primary' value='$value->id'></td>";
                $zhutiStr .= "<td>$value->classid</td>";
                $zhutiStr .= "<td>$value->title</td>";
                $zhutiStr .= "<td>$releasetime</td>";
                $zhutiStr .= "<td>$value->pageviews</td>";
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

    public function edit(){
        $classid = $this->input->post('classid');
        if(!$classid){
            echo json_encode(['state'=>'未获得修改项目']);die();
        }
        //初始化
        $bz = false;$tag = 0;
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
        $sql = "select title,content from yt_news where classid='$classid'";
        $query = $this->db->query($sql);
        if(!$query->row()){//防止news
            echo json_encode(['state'=>'数据丢失2']);die();
        }
        $oldtitle = $query->row()->title;
        $title = $this->input->post('title');
        if($title != $oldtitle){
            $bz = true;
            $this->db->set('title',$title);
            $sql = "update yt_classes set title='$title' where classid='$classid'";
            $this->db->query($sql);//应该先判断 是否修改成功,错误的话,应该先把错误信息存起来,等会打印出来
        }//标题
        $oldcontent = $query->row()->content;
        $content = $this->input->post('content');
        if($content != $oldcontent){
            $bz = true;
            $this->db->set('content',$content);
        }//内容
        if($bz){
            $this->db->where('classid',$classid);
            $tag = $this->db->update('yt_news');
            if($tag){
                echo json_encode(['state'=>1]);die();
            }
            echo json_encode(['state'=>'发生了一个更新BUG']);die();
        }
        echo json_encode(['state'=>1]);die();
    }

    public function genxin(){
        $classid = $this->input->get('classid');
        if(!$classid){
            echo "<script>alert('没接收到修改项');history.back();</script>";die();
        }
        //初始化
        $strzhuti = "";$type = "";
        $res2 = array('classid'=>$classid,'title'=>"空",'content'=>"空",'str'=>"空");
        //selected
        $sql = "select pid from yt_classes where classid='$classid'";
        $query = $this->db->query($sql);
        if($query->row()){
            $pid = $query->row()->pid;
        }
        //option
        $strOP = "";
        $sql = "select id,title,type from yt_classes where classid=0 and pid>0 and type=1";
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
        $sql = "select title,content from yt_news where classid='$classid'";
        $query = $this->db->query($sql);
        if($query->row()){
            $data = $query->row();
            $res2['title'] = $data->title;
            $res2['content'] = $data->content;
        }
        return $res2;
    }
}//类结束
?>