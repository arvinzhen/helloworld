<?php

namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Db;
use think\Validate;
use think\Facade\Hook;
use think\Facade\Captcha;

class Classes extends Controller
{
    protected $alltype = [1=>'关于我们',2=>'新闻资讯',3=>'企业服务',4=>'员工服务',5=>'求职招聘',6=>'联系我们',7=>'下载中心'];
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $data1 = $this->rehtml1();
        $data2 = $this->rehtml2();
        $this->assign('data1',$data1);
        $this->assign('data2',$data2);
        return $this->fetch();
    }

    /**
     * 主表
     */
    public function rehtml1(){
        $condition = [];$query = [];
        $condition[] = ['classid','>',0];
        $title = $this->request->get('title');
        if($title){
            $condition[] = ['title','like',$title];
            $query['title'] = $title;
        }
        $type = $this->request->get('type');
        if($type){
            $condition[] = ['type','=',$type];
            $query['type'] = $type;
        }
        $res1 = Db::table('classes')->where($condition)->paginate(8,false,['query'=>$query])->each(function($item,$key){
            $item['type'] = $this->alltype[$item['type']];
            return $item;
        });
        $this->assign('data1',$res1);
        return $this->fetch('rehtml1')->getContent();
    }

    /**
     * 结构表
     */
    public function rehtml2(){
        $res2 = Db::table('classes')->field('id,title,type')->where('pid','=',0)->where('classid','=',0)->order('type','asc')->select();
        //应该吧$this->alltype 设为顶级title, 应该把条件 独立出来, 联系太紧密了
        $data2 = [];$j = 0;$allnum = count($res2) - 1;
        for($i = 1; $i < 8; $i++){
            $num = $res2[$j]['type'];
            $data2[] = ['id'=>0,'title'=>$this->alltype[$num]];
            while($res2[$j]['type'] == $i && $j < $allnum){
                $data2[] = ['id'=>$res2[$j]['id'],'title'=>$res2[$j]['title']];
                $j++;
            }
        }
        $this->assign('data2',$data2);
        return $this->fetch('rehtml2')->getContent();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
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
        $type = $request->post('toptitle');
        if(!$type){echo ajson("顶级标题没选");die();}
        $title = $request->post('sontitle');
        if(!$title){echo ajson("子标题没能为空");die();}
        $data = ['title'=>$title,'type'=>$type];
        $tag = Db::table('classes')->data($data)->insert();
        if(!$tag){echo ajson("数据插入异常");die();}
        echo ajson(1);die();
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        $res = Db::table('classes')->find($id);
        if(!$res){return "<p>数据异常哦</p>";}
        $type = $res['type'] + 1;
        $data = ['id'=>$res['id'],'type'=>$type,'title'=>$res['title']];
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
    public function update(Request $request, $id)
    {
        $type = $request->post('toptitle');
        if(!$type){echo ajson("顶级标题没选");die();}
        $res = Db::table('classes')->field('type')->find($id);
        if(!$res){echo ajson("数据不存在");die();}
        $oldtype = $res['type'];
        $res2 = Db::table('classes')->where('pid','=',$id)->select();
        if($res2 && $oldtype != $type){
            echo ajson("当前项下面有子项,请不要更改顶级类别!");die();
        }
        $title = $request->post('sontitle');
        if(!$title){echo ajson("子标题没能为空");die();}
        //旧数据
        $data = ['title'=>$title,'type'=>$type];
        $tag = Db::table('classes')->where('id',$id)->update($data);
        if(!$tag){echo ajson("数据更新异常或数据没变化");die();}
        echo ajson(1);die();
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        if(!$id){echo ajson("数据异常");die();}
        $res = Db::table('classes')->where('id','=',$id)->find();
        if(!$res){echo ajson("数据异常");die();}
        $res2 = Db::table('classes')->where('pid','=',$id)->select();
        if($res2){echo ajson("该项有子项,请先删除子项");die();}//应该先约定 后台的 各个state的数字代表哪段话,前端直接用,加快传输速度
        $tag = Db::table('classes')->delete($id);
        if(!$tag){echo asjon("删除失败");die();}
        echo ajson(1);die();
    }
}
