<?php

namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\Facade\Hook;
use think\Facade\Captcha;
use think\Db;

class Offer extends Controller
{
    /**
     * 初始化 检查登入权限
     */
    protected function initialize(){
        Hook::add('app_begin','app\\admin\\behavior\\CheckLogin');
        Hook::listen('app_begin');
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $data = $this->rehtml();
        $this->assign('data',$data);
        // $eps = $this->request->post('eps'); //期望薪资,但是在添加页面没设置区间
        // $num = $this->request->post('num'); //人数,同上
        return $this->fetch('index');
    }

    /**
     * 重新请求数据
     */
    public function rehtml(){
        $condition = [];$query = [];
        $start = $this->request->get('start');
        if($start){
            $start = strtotime($start);
            $condition[] = ['releasetime','>',$start];
            $query['start'] = $start;
        }
        $end = $this->request->get('end');
        if($end){
            $end = strtotime($end);
            $condition[] = ['releasetime','<',$end];
            $query['end'] = $end;
        }
        $name = $this->request->get('name');
        if($name){
            $condition[] = ['name','like',$name];
            $query['name'] = $name;
        }
        $dpm = $this->request->get('dpm');
        if($dpm){
            $condition[] = ['dpm','=',$dpm];
            $query['dpm'] = $dpm;
        }
        $edu = $this->request->get('edu');
        if($edu){
            $condition[] = ['edu','=',$edu];
            $query['edu'] = $edu;
        }
        $res = Db::table('offers')->field('id,name,dpm,edu,eps,num,releasetime')->where($condition)->order('id','asc')->paginate(8,false,['query'=>$query])->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        // $sql = Db::table('offers')->field('id,name,dpm,edu,eps,num,releasetime')->where($condition)->order('id','asc')->fetchSql(true)->limit(0,8)->select();
        $this->assign('condition',json_encode($condition));
        $this->assign('query',json_encode($query));
        if(!count($res)){
            $this->assign('pz',0);
            return $this->fetch();
            die();
        }
        $this->assign('pz',1);
        $data = [];$page = $res->render();
        for ($i = 0; $i < count($res); $i++) {
            $data[$i]['id'] = $res[$i]['id'];
            $data[$i]['name'] = $res[$i]['name'];
            $data[$i]['dpm'] = $res[$i]['dpm'];
            $data[$i]['edu'] = $res[$i]['edu'];
            $data[$i]['eps'] = $res[$i]['eps'];
            $data[$i]['num'] = $res[$i]['num'];
            $data[$i]['releasetime'] = $res[$i]['releasetime'];
        }
        $this->assign('data',$data);
        $this->assign('page',$page);
        return $this->fetch('rehtml')->getContent();
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
        $alldata = [];
        //职位
        $name = $request->post('name');
        if(!$name){echo ajson("职位没填!");die();}
        $alldata['name'] = $name;
        //岗位
        $dpm = $request->post('dpm');
        if(!$dpm){echo ajson("岗位没填!");die();}
        $alldata['dpm'] = $dpm;
        //学历
        $edu = $request->post('edu');
        $alldata['edu'] = $edu;
        //期望薪资
        $eps = $request->post('eps');
        $alldata['eps'] = '面议';
        if($eps){$alldata['eps'] = $eps;}
        //招聘人数
        $num = $request->post('num');
        if(!$num){
            echo ajson("没填人数");die();
        }
        $pattern='/^[1-9]+[0-9]{0,2}[\-]*\d+/i';
        preg_match($pattern, $num, $match);
        if(!$match){
            echo ajson("人数格式异常");die();
        }
        if(strlen($match[0]) > 9){
            echo ajson("人数数量异常");die();
            // $alldata['num'] = substr($match[0], 0, 8) . "人";
        }
        $alldata['num'] = $match[0]."人";
        //岗位职责
        $duty = $request->post('duty');
        $alldata['duty'] = "无";
        if($duty){$alldata['duty'] = $duty;}
        //岗位要求
        $claim = $request->post('claim');
        $alldata['claim'] = "无";
        if($claim){$alldata['claim'] = $claim;}
        //福利待遇
        $treat = $request->post('treat');
        $alldata['treat'] = "无";
        if($treat){$alldata['treat'] = $treat;}
        $alldata['releasetime'] = time();
        $tag = Db::table('offers')->insert($alldata);
        if(!$tag){
            echo ajson("数据插入失败");die();
        }
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
        $res = Db::table('offers')->find($id);
        if(!count($res)){return "发生错误啦";}
        $this->assign('data',$res);
        return $this->fetch();
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        $res = Db::table('offers')->find($id);
        if(!count($res)){return "数据发生错误哦";die();}
        $this->assign('data',$res);
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
        $alldata = [];
        //职位
        $name = $request->post('name');
        if(!$name){echo ajson("职位没填!");die();}
        $alldata['name'] = $name;
        //岗位
        $dpm = $request->post('dpm');
        if(!$dpm){echo ajson("岗位没填!");die();}
        $alldata['dpm'] = $dpm;
        //学历
        $edu = $request->post('edu');
        $alldata['edu'] = $edu;
        //期望薪资
        $eps = $request->post('eps');
        $alldata['eps'] = '面议';
        if($eps){$alldata['eps'] = $eps;}
        //招聘人数
        $num = $request->post('num');
        if(!$num){
            echo ajson("没填人数");die();
        }
        $pattern='/^[1-9]+[0-9]{0,2}[\-]*\d+/i';
        preg_match($pattern, $num, $match);
        if(!$match){
            echo ajson("人数格式异常");die();
        }
        if(strlen($match[0]) > 9){
            echo ajson("人数数量异常");die();
            // $alldata['num'] = substr($match[0], 0, 8) . "人";
        }
        $alldata['num'] = $match[0]."人";
        //岗位职责
        $duty = $request->post('duty');
        $alldata['duty'] = "无";
        if($duty){$alldata['duty'] = $duty;}
        //岗位要求
        $claim = $request->post('claim');
        $alldata['claim'] = "无";
        if($claim){$alldata['claim'] = $claim;}
        //福利待遇
        $treat = $request->post('treat');
        $alldata['treat'] = "无";
        if($treat){$alldata['treat'] = $treat;}
        $tag = Db::table('offers')->data($alldata)->where('id',$id)->update();
        if(!$tag){
            echo ajson("数据更新失败,或许内容没变化");die();
        }
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
        $tag = Db::table('offers')->delete($id);
        if(!$tag){echo json_encode(['state'=>'删除失败','data'=>'']);die();}
        $condition = json_decode($this->request->post('condition'));
        $query = json_decode($this->request->post('query'));
        $res = Db::table('offers')->field('id,name,dpm,edu,eps,num,releasetime')->where($condition)->order('id','asc')->paginate(8,false,['query'=>$query])->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        $this->assign('condition',$this->request->post('condition'));
        $this->assign('query',$this->request->post('query'));
        if(!count($res)){
            $this->assign('pz',0);
            $html =  $this->fetch('rehtml')->getContent();
            echo json_encode(['state'=>1,'data'=>$html]);die();
        }
        $this->assign('pz',1);
        $data = [];$page = $res->render();
        for ($i = 0; $i < count($res); $i++) {
            $data[$i]['id'] = $res[$i]['id'];
            $data[$i]['name'] = $res[$i]['name'];
            $data[$i]['dpm'] = $res[$i]['dpm'];
            $data[$i]['edu'] = $res[$i]['edu'];
            $data[$i]['eps'] = $res[$i]['eps'];
            $data[$i]['num'] = $res[$i]['num'];
            $data[$i]['releasetime'] = $res[$i]['releasetime'];
        }
        $this->assign('data',$data);
        $this->assign('page',$page);
        $html = $this->fetch('rehtml')->getContent();
        echo  json_encode(['state'=>1,'data'=>$html]);die();
    }

    /**
     * 删除后补充数据
    //最后一个的id值
    //删除几个
     */
    public function adddel($lastid,$len){
    }

    public function deletes(){
        $ids = $this->request->post('ids');
        if(!count($ids)){echo ajson("未接受到删除项");die();}
        $idstr = implode(',',$ids);
        $tag = Db::table('offers')->where('id','in',$idstr)->delete();
        if(!$tag){echo ajson("删除数据失败");die();}
        $condition = json_decode($this->request->post('condition'));
        $query = json_decode($this->request->post('query'));
        $res = Db::table('offers')->field('id,name,dpm,edu,eps,num,releasetime')->where($condition)->order('id','asc')->paginate(8,false,['query'=>$query])->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        $this->assign('condition',$this->request->post('condition'));
        $this->assign('query',$this->request->post('query'));
        if(!count($res)){
            $this->assign('pz',0);
            $html =  $this->fetch('rehtml')->getContent();
            echo json_encode(['state'=>1,'data'=>$html]);die();
        }
        $this->assign('pz',1);
        $data = [];$page = $res->render();
        for ($i = 0; $i < count($res); $i++) {
            $data[$i]['id'] = $res[$i]['id'];
            $data[$i]['name'] = $res[$i]['name'];
            $data[$i]['dpm'] = $res[$i]['dpm'];
            $data[$i]['edu'] = $res[$i]['edu'];
            $data[$i]['eps'] = $res[$i]['eps'];
            $data[$i]['num'] = $res[$i]['num'];
            $data[$i]['releasetime'] = $res[$i]['releasetime'];
        }
        $this->assign('data',$data);
        $this->assign('page',$page);
        $html = $this->fetch('rehtml')->getContent();
        echo  json_encode(['state'=>1,'data'=>$html]);die();
    }
}
