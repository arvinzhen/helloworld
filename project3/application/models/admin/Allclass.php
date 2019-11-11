<?php 
	defined('BASEPATH') OR exit('No direct srcipt access allowed');
	class Allclass extends CI_Model{
		public function __construct(){
			parent::__construct();
			// $CI =& get_instance();
		}

		public function zhuye(){
            $curPage = 0;$search = "";$strLT = "";$strRT = "";
            if($this->input->get('page')){
                $curPage = $this->input->get('page');
            }
            if($this->input->get('title')){
                $search = "and title like '%".$this->input->get('title')."%'";
			}
			//先处理左边表格
            $sql = "select classid,type,title from yt_classes where classid>0 ".$search." order by id asc limit $curPage,10";
			$query = $this->db->query($sql);
			$res = $query->result();
			if($res){
				foreach ($res as $value) {
					$url = 'admin/news';
					if($value->type == 2){
						$url= 'admin/product';
					}
					$editUrl = base_url($url.'/update?classid='.$value->classid);
					$infoUrl = base_url($url.'/detail?classid='.$value->classid);
					$delUrl = base_url($url.'/delete');
					$strLT .= "<tr>";
					$strLT .= "<td style='width:400px;'>$value->title</td>";
					$strLT .= "<td><a onclick=\"xadmin.open('编辑','$editUrl','','')\">编辑</a></td>";
					$strLT .= "<td><a onclick=\"xadmin.open('详情','$infoUrl','','')\">详情</a></td>";
					$strLT .= "<td><a onclick=\"member_del($delUrl,$value->classid)\" href='javascript:;'>删除</a></td>";
					$strLT .= "</tr>";
				}
			}
			//再处理右边表格
			$sql = "select id,title from yt_classes where classid=0 and pid=0 order by type asc";
			$query = $this->db->query($sql);
			$res = $query->result();
			if($res){
				foreach ($res as $value) {
					$editUrl = base_url('admin/classes/edit?id='.$value->id);
					$infoUrl = base_url('admin/classes/detail?id='.$value->id);
					$delUrl = base_url('admin/classes/delete?id='.$value->id);
					$strRT .= "<tr><td style='width:400px;'>|$value->title</td>";
					$strRT .= "<td><a onclick=\"xadmin.open('编辑','$editUrl','','')\" href='javascript:;'>编辑</a></td>";
					$strRT .= "<td><a onclick=\"xadmin.open('详情','$infoUrl','','')\" href='javascript:;'>详情</a></td>";
					$strRT .= "<td><a href='javascript:;' title='防止粗心操作,请不要删除顶级title'>删除</a></td>";
					$strRT .= "</tr>";
					$sql = "select id,title from yt_classes where classid=0 and pid='$value->id' order by id asc";//迭代终止条件是res有无,迭代传值 本id 由于这里就两层,所以就手写了
					$query = $this->db->query($sql);
					if($query->result()){
						foreach ($query->result() as $row) {
							$editUrl = base_url('admin/classes/edit?id='.$row->id);
							$infoUrl = base_url('admin/classes/detail?id='.$row->id);
							$delUrl = base_url('admin/classes/delete?id='.$row->id);
							$strRT .= "<tr><td>|-----------&gt;$row->title</td>";
							$strRT .= "<td><a onclick=\"xadmin.open('编辑','$editUrl','','')\">编辑</a></td>";
							$strRT .= "<td><a onclick=\"xadmin.open('详情','$infoUrl','','')\">详情</a></td>";
							$strRT .= "<td><a onclick=\"del($row->id)\">删除</a></td>";
						}
					}
				}
			}
			return ['strLT'=>$strLT,'strRT'=>$strRT];
		}

		public function del(){
			//疑问:管理员界面是否还需要 鉴别是否假传 id 或者 classid
			if(!$this->input->get()){
				echo json_encode(['state'=>"请选择删除项"]);die();
			}
			$id = $this->input->get('id');
			if($id){
				$tag = $this->db->delete('yt_classes',array('id'=>$id));
				if(!$tag){
					echo json_encode(['state'=>"没删除成功"]);die();
				}
				$sql = "select type from yt_classes where id='$id'";
				$query = $this->db->query($sql);
				//无 父类
				if(!$query->row()){
					echo json_encode(['state'=>'另类删除成功']);die();
				}
				//有父类
				$type = $query->row()->type;
				$arr = [0=>'yt_abouts',1=>'yt_news',2=>'yt_product'];
				$sql = "select classid from yt_classes where type='$type'";
				$query = $this->db->query($sql);
				//无 子类
				if(!$query->result()){
					echo json_encode(['state'=>1]);die();
				}
				//有 子类
				$tbn = $arr[$type];
				$classids = $query->reuslt_array();
				$tag = $this->db->delete($tbn,$classids);
				if($tag){
					echo json_encode(['state'=>1]);die();
				}
				echo json_encode(['state'=>"子项目删除失败"]);die();
			}
			//zhixing classid
			$classid = $this->input->get('classid');
			if($classid){
				$sql = "select type from yt_classes where classid='$classid'";
				$query = $this->db->query($sql);
				if(!$query->row()){
					echo json_encode(['state'=>"删除失败1"]);die();
				}
				$type = $query->row()->type;
				$arr = [0=>'yt_abouts',1=>'yt_news',2=>'yt_product'];
				$tag = $this->db->delete($arr[$type],array('classid'=>$classid));
				$tag1 = $this->db->delete('yt_classes',array('classid'=>$classid));
				if($tag && $tag1){
					echo json_encode(['state'=>1]);die();
				}
				echo json_encode(['state'=>"删除失败 子项"]);die();
			}
			echo json_encode(['state'=>"无删除项"]);die();
		}

		public function update(){
			if(!$this->input->get()){
				
			}
			$classid = $this->input->get('classid');
		}
	}
 ?>