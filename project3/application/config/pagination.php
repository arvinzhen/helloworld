<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$config['uri_segment'] = 3;//指定哪个字段是page
$config['num_link'] = 2;
// $config['use_page_numbers'] = TRUE;//实际页数
$config['page_query_string'] = TRUE;//uri分段
$config['reuse_query_string'] = TRUE;
$config['full_tag_open'] = "<div class='page'>";
$config['full_tag_close'] = '</div>';
$config['first_link'] = '首页';//左边第一个链接显示
$config['last_link'] = '末页';//首尾页的url在特定页面加
$config['next_link'] = '&gt;&gt;';
$config['prev_link'] = '&lt;&lt;';
// $config['display_pages'] = FALSE;//隐藏数字
$config['attributes'] = array('class'=>'num');
$config['attributes']['rel'] = FALSE;
?>