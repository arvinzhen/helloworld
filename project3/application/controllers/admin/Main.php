<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Main extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->helper('dalunzi');
        $this->load->model('admin/jic');
        $CI =& get_instance();
    }

    public function index(){

    }

}