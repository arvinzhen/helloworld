<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Allin extends CI_Controller{
    public function __construct(){
        parent::__construct();
        checkLogin();
    }

    public function index(){
        $this->load->view('admin/index');
    }

    public function welcome(){
        $username = $this->session->userdata('username');
        $data = array('username'=>$username);
        $this->load->view('admin/welcome',$data);
    }
}