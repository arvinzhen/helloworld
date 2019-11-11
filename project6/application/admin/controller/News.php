<?php

namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\Facade\Hook;
use think\captcha\Captcha;
use think\Db;

class News extends Controller
{
    /**
     * 初始化,检查登入
     */
    protected function initialize(){
        Hook::add('app_begin','app\\admin\\behavior\\CheckLogin');
        Hook::listen('app_begin');
    }

    protected $alltype = 2;//classes里面的分类

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
    	// ohno($this->request->get());
    	$condition = [['classid','>',0],['type','=',2]];
    	$query = [];$classids = [];
    	$title = $this->request->get('title');
    	if($title){
    		$condition[] = ['title','like',$title];
    		$query['title'] = $title;
    	}
    	$pid = $this->request->get('type');
    	if($pid){
    		$condition[] = ['pid','=',$pid];
    		$query['pid'] = $pid;
    	}
    	$res = Db::table('classes')->field('classid')->where($condition)->select();
    	//处理第一部分结束
    	//加载选项option
  		$pids = Db::table('classes')->field('id,title')->where('classid','=',0)->where('type','=',$this->alltype)->select();
		$this->assign('pid',$pids);
		$this->assign('pz',0);//默认没找到
       	if(!$res){//没找到的情况下
  			$this->assign('res','');
    		return $this->fetch();die();
    	}
        $res = Db::table('classes')->field('classid')->where($condition)->paginate(8,false,['query'=>$query]);
    	//有classid的话
    	//判断时间
    	//处理第二部分
    	$condition2 = [];$query2 = [];
    	foreach ($res as $value) {
    		$classids[] = $value;
    	}
    	$start = $this->request->get('start');
    	if($start){
    		$start = strtotime($start);
    		$condition2[] = ['releasetime','>',$start];
    		$query2['start'] = $start;
    	}
    	$end = $this->request->get('end');
    	if($end){
    		$end = strtotime($end);
    		$condition2[] = ['releasetime','<',$end];
    		$query2['end'] = $end;
    	}
    	$res2 = Db::table('news')->field('classid,title,releasetime')->where($condition2)->order('id','asc')->paginate(8,false,['query'=>$query2])->each(function($item,$key){
    		$item['releasetime'] = sj($item['releasetime']);
    		return $item;
    	});
    	if(!$res2){
    		$this->assign('res','');
    		return $this->fetch();die();
    	}
    	$this->assign('pz',1);
    	$this->assign('res',$res2);
    	return $this->fetch();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
    	$res = Db::table('classes')->field('id,title')->where('classid','=',0)->where('type','=',$this->alltype)->order('id','asc')->select();
    	$this->assign('data',$res);
        return $this->fetch();
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
    	$pid = $request->post('type');
    	if(!$pid){echo ajson("添加失败,父类数据异常");die();}
    	$title = $request->post('title');
    	if(!$title){echo ajson('数据异常,未获得标题');die();}
    	$intro = $request->post('intro');
    	$content = $request->post('content');
    	$releasetime = time();
    	$classids = Db::table('classes')->field('classid')->order('classid','desc')->find();
    	$classid = 1;
    	if($classids){
    		$classid = $classids['classid'] + 1;
    	}
    	$data = ['classid'=>$classid,'title'=>$title,'intro'=>$intro,'content'=>$content,'releasetime'=>$releasetime];
    	$data2 = ['pid'=>$pid,'classid'=>$classid,'title'=>$title,'type'=>$this->alltype];
    	$tag1 = Db::table('news')->data($data)->insert();
    	$tag2 = Db::table('classes')->data($data2)->insert();
    	if(!$tag1){echo ajson("数据插入失败");die();}
    	if(!$tag2){echo ajson("数据索引失败");die();}
    	echo ajson(1);die();
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($classid = 0)
    {
    	if(!$classid){echo "非法进入,未接收到删除项!";die();}
        $res = Db::table('news')->where('classid','=',$classid)->find();
        $res2 = Db::table('classes')->field('pid')->where('classid','=',$classid)->find();
        if(!$res || !$res2){echo "数据异常";die();}
        $res['releasetime'] = sj($res['releasetime']);
        $pid = $res2['pid'];
        $ptitle = "空";
        $res3 = Db::table('classes')->field('title')->where('id','=',$pid)->find();
        if($res3){$ptitle = $res3['title'];}
        $this->assign('data',$res);
        $this->assign('ptitle',$ptitle);
        return $this->fetch('detail');
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($classid = 0)
    {
        if(!$classid){echo "当前数据异常";die();}
        $res2 = Db::table('news')->field('id,title,intro,content')->where('classid','=',$classid)->find();
        if(!$res2){echo "数据没了";die();}
        //处理classes的相关数据
        $ptitle = "没父级";$data = [];$id = 0;
        $res1 = Db::table('classes')->field('pid')->where('classid','=',$classid)->find();
        if(!$res1){
        	echo "<p class='text-center'>当前项在类别表找不到,数据异常</p>";
        }else{
        	$id = $res1['pid'];
        	$pid = Db::table('classes')->field('title')->where('id',$id)->find();
        	if(!$pid){echo "<p class='x-red text-center'>当前项的父类找不到,数据异常</p>";}else{
        		$ptitle = $pid['title'];
        	}
        }
        $data['ptitle'] = $ptitle;
        //处理主要内容
    	$data['id'] = $res2['id'];
    	$data['classid'] = $classid;
    	$data['title'] = $res2['title'];
    	$data['intro'] = $res2['intro'];
    	$data['content'] = $res2['content'];
 		$pids = Db::table('classes')->field('id,title')->where('classid','=',0)->where('type','=',$this->alltype)->select();
 		$this->assign('id',$id);
		$this->assign('res',$pids);
        $this->assign('data',$data);
        return $this->fetch();
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $classid)
    {
    	$pid = $request->post('type');
    	if(!$pid){echo ajson("添加失败,父类数据异常");die();}
    	$title = $request->post('title');
    	if(!$title){echo ajson('数据异常,未获得标题');die();}
    	//原始数据
    	$olddata1 = Db::table('news')->field('title,intro,content')->where('classid','=',$classid)->find();
    	if(!$olddata1){echo ajosn("数据异常");die();}
    	$oldpid = $request->post('oldpid');
    	$intro = $request->post('intro');
    	$content = $request->post('content');
    	//比对数据
    	$data = [];$data2 = [];
    	if($olddata1['title'] != $title){
    		$data['title'] = $title;
	    	$data2['title'] = $title;
    	}
    	if($oldpid != $pid){
    		$data2['pid'] = $pid;
    	}
    	if($olddata1['intro'] != $intro){
    		$data['intro'] = $intro;
    	}
    	if($olddata1['content'] != $content){
    		$data['content'] = $content;
    	}
    	//更新数据
    	$tag1 = true;$tag2 = true;
    	if($data){
    		$tag1 = Db::table('news')->where('classid','=',$classid)->update($data);
    	}
    	if($data2){
    		$tag2 = Db::table('classes')->where('classid','=',$classid)->update($data2);
    	}
    	if(!$tag1){echo ajson("数据插入失败");die();}
    	if(!$tag2){echo ajson("数据索引失败");die();}
    	echo ajson(1);die();
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($classid = 0)
    {
        if(!$classid){echo asjon("未接收到,删除项");die();}
        $res = Db::table('news')->field('content')->where('classid','=',$classid)->find();
        if($res && $res['content']){
        	$imgData = getImgSrc($res['content']);
            if($imgData){
                foreach ($imgData as $value) {
                    $path = winDz("upload/image/".$value);
                    if(file_exists($path)){
                        unlink($path);
                    }
                }
            }
        }
        $tag1 = Db::table('news')->where('classid','=',$classid)->delete();
        $tag2 = Db::table('classes')->where('classid','=',$classid)->delete();
        if($tag1 && $tag2){
        	echo ajson(1);die();
        }
        echo ajson("发生未知错误");die();
    }

    public function deletes()
    {
        $ids = $this->request->post('ids');
        if(!$ids){
	        echo ajson("未获得删除项");die();
        }
    	foreach ($ids as $classid) {
    		$res = Db::table('news')->field('content')->where('classid','=',$classid)->find();
	        if($res && $res['content']){
	        	$imgData = getImgSrc($res['content']);
	            if($imgData){
	                foreach ($imgData as $value) {
	                    $path = winDz("upload/image/".$value);
	                    if(file_exists($path)){
	                        unlink($path);
	                    }
	                }
	            }
	        }
	        $tag1 = Db::table('news')->where('classid','=',$classid)->delete();
	        $tag2 = Db::table('classes')->where('classid','=',$classid)->delete();
	        if(!$tag1 || !$tag2){echo ajson("删除数据异常!已暂停");die();break;}
    	}
    	echo ajson(1);die();
    }
}
