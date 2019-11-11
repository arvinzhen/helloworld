<?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    class Allusers extends CI_Model{
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
            $sql = "select count(id) as t from yt_users ";
            $search = $this->input->get('title');
            if($search){
                $condition .= "where username like '%$search%'";
            }
            $sql .= $condition;
            $query = $this->db->query($sql);
            $allNum = $query->row()->t;//总个数
            if($allNum){ 
                $params = ['allnum'=>$allNum,'curPage'=>$curPage,'addr'=>'/admin/users'];//,'perPage'=>1
                //分页开始 向Fenye传$params
                $this->load->library("fenye",$params);
                $fenyeStr .= $this->fenye->getFy();
                //分页结束
                //加载内容
                $sql = "select id,username,realname,releasetime from yt_users ".$condition.$this->fenye->getLimit();
                $query = $this->db->query($sql);
                //if($query->result()) 需要的话可以加
                foreach ($query->result() as $value) {
                    $editUrl = site_url('/admin/users/update?id='.$value->id);
                    $infoUrl = site_url('/admin/users/edit_pwd?id='.$value->id);
                    $regtime = date("Y-m-d H:i:s",$value->releasetime);
                    $zhutiStr .= "<tr>";
                    $zhutiStr .= "<td style='color:white;'>占位
                    <input type='checkbox' class='ids' name='ids[]' lay-skin='primary' value='$value->id'></td>";
                    $zhutiStr .= "<td>$value->username</td>";
                    $zhutiStr .= "<td>$value->realname</td>";
                    $zhutiStr .= "<td>$regtime</td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"xadmin.open('编辑','$editUrl','600','600')\" href='javascript:;'>编辑<i class='layui-icon'>&#xe642;</i></a></td>";
                    $zhutiStr .= "<td class='td-manage'><a onclick=\"xadmin.open('修改密码','$infoUrl','600','600')\" href='javascript:;'>修改密码<i class='layui-icon'>&#xe642;</i></a></td>";
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