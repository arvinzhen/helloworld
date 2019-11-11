<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Jic extends CI_Model{
    public function __construct(){
        parent::__construct();
    }
    public function add($tbn,$data){
        $tag = $this->db->insert($tbn,$data);
        return $tag;
    }

    public function update($tbn,$data){
        $tag = $this->db->update();
    }

    public function fenye($curMethod,$total,$perPage){
        $this->load->library('pagination');
        $config['base_url'] = 'http://hj.com/admin/'.$curMethod.'/';
        echo $config['base_url'];
        $config['total_rows'] = $total;
        $config['per_page'] = $perPage;
        $this->pagination->initialize($config);
        return $this->pagination->create_links();
    }
}