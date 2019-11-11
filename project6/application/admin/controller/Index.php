<?php

namespace app\admin\controller;
use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\Facade\Hook;
use think\captcha\Captcha;
use think\Db;
class Index extends Controller
{
    /**
     * 初始化,检查登入
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
    //首页
    public function index()
    {
        //
        return $this->fetch();
        //管理的主页
        //
    }
    //主页里面的小首页
    public function welcome()
    {
        $this->assign('name',Session::get('currentUser.username','admin'));
        return $this->fetch();
    }
    //xadmin示例
    public function demo()
    {
        return $this->fetch();
    }
    //错误页面
    public function _empty()
    {
        return $this->fetch('error');
    }
    //日志
    public function log()
    {
        return $this->fetch();
    }
    //字体
    public function unicode()
    {
        return $this->fetch();
    }
    //折线图
    public function echarts1()
    {
        return $this->fetch();
    }
    public function echarts2()
    {
        return $this->fetch();
    }
    public function echarts3()
    {
        return $this->fetch();
    }
    public function echarts4()
    {
        return $this->fetch();
    }
    public function echarts5()
    {
        return $this->fetch();
    }
    public function echarts6()
    {
        return $this->fetch();
    }
    public function echarts7()
    {
        return $this->fetch();
    }
    public function echarts8()
    {
        return $this->fetch();
    }
}
