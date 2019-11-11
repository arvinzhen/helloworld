<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Allmessage extends CI_Model{
        public function __construct(){
            parent::__construct();
        }

        public function zhuye(){
            $curPage = 0;$fenyeStr = "";$zhutiStr = "";$condition = "";$search = "";//初始化
            if($this->input->get('page')){
                $curPage = $this->input->get('page');
            }
            //处理搜索
            //分页 并且确定有无数据
            $sql = "select count(id) as t from yt_message ";
            if($this->input->post('name')){
                $name = $this->input->post('name');
                $search .= "and name='$name' ";
            }
            if($this->input->post('tel')){
                $tel = $this->input->post('tel');
                $search .= "and tel='$tel' ";
            }
            if($search){
                $condition .= "where".substr($search,3);
            }
            $sql .= $condition;
            $query = $this->db->query($sql);
            $allNum = $query->row()->t;//总个数
            if($allNum){ 
                $params = ['allnum'=>$allNum,'curPage'=>$curPage,'addr'=>'/admin/message'];//,'perPage'=>1
                //分页开始 向Fenye传$params
                $this->load->library("fenye",$params);
                $fenyeStr .= $this->fenye->getFy();
                //分页结束
                //加载内容
                $sql = "select id,name,tel,releasetime from yt_message ".$condition.$this->fenye->getLimit();
                $query = $this->db->query($sql);
                //if($query->result()) 需要的话可以加
                foreach ($query->result() as $value) {
                    $infoUrl = site_url('admin/message/detail?id='.$value->id);
                    $al = substr($value->releasetime,0,10);
                    $regtime = date("Y-m-d H:i:s",$al);//$value->releasetime
                    $zhutiStr .= "<tr>";
                    $zhutiStr .= "<td style='color:white;'>占位
                    <input type='checkbox' class='ids' name='ids[]' lay-skin='primary' value='$value->id'></td>";
                    $zhutiStr .= "<td>$value->name</td>";
                    $zhutiStr .= "<td>$value->tel</td>";
                    $zhutiStr .= "<td>$regtime</td>";
                    $zhutiStr .= "<td class='td-manage'><a href='javascript:;'>编辑<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"xadmin.open('详情','$infoUrl','800','800')\" href='javascript:;'>详情<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"del($value->id)\" href='javascript:;'>删除<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "</tr>";
                }
            }else{
                $zhutiStr .= "暂时没有内容,添加一些吧!";
            }
            return ['fy'=>$fenyeStr,'content'=>$zhutiStr];
        }

    
    }
?>