<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
	function ohno($str){
		echo "<pre>";
		print_r($str);
		echo "</pre>";
		die();
	}

	function jiami($str){
		$str = sha1($str);
		$str = md5($str);
		return $str;
	}

	function dump($str){
		echo "<pre>";
		var_dump($str);
		echo "</pre>";
	}

	function ajson($str){
		return json_encode(['state'=>$str]);
	}

	function getExt($str){
		return substr($str,strripos($str , ".")+1);
	}

	function sj($str){
		return date("Y:m:d H:i:s",$str);
	}

	function rq($str){
		return date("Y-m:d",$str);
	}

	function winDz($str){
		return str_replace("\\", "/", $str);
	}

	function linuxDz($str){
		return str_replace("/", "\\", $str);
	}

	function imgpath(){
		return "public/static/upload/image/";
	}

	function getImgSrc($content,$suojin=-29){
		$add_img = [];
        $pattern='/<img.*?src=[\"|\']?(.*?)[\"|\']?\s.*?>/i';
/*        $pattern='/.*?src=\/\"/(.*?)\\"\sstyle.*?>/i';
*/        preg_match_all($pattern,$content,$res);
        if(count($res[1]) > 0){//代表匹配到图片了，截取字符串，获取图片名称即可
            foreach($res[1] as $v){
                $src = substr($v, $suojin);//这里的负值代表 保存图片规则 长度
                $img_name = $src;
                $add_img[] = $img_name;
                // $add_img[]=[
                //     'name'=>$img_name,
                // ];
            }
        }
        return $add_img;
	}

	//循环删除目录和文件函数
	function delDirAndFile( $dirName )
	{
	    if ( $handle = opendir( "$dirName" ) ) {
	        while ( false !== ( $item = readdir( $handle ) ) ) {
	            if ( $item != "." && $item != ".." ) {
	                if ( is_dir( "$dirName/$item" ) ) {
	                    delDirAndFile( "$dirName/$item" );
	                } else {
	                    if( unlink( "$dirName/$item" ) )echo "成功删除文件： $dirName/$item\n";
	                }
	            }
	        }
	        closedir( $handle );
	        if( rmdir( $dirName ) )echo "成功删除目录： $dirName\n";
	    }
	}

	function connect($dbn, $username="root", $password="root"){
		$sql = "mysql:host=127.0.0.1;dbname=".$dbn;
		$db = new PDO($sql, $username, $password);
		$db->exec("SET names 'utf8'");
		return $db;
	}

	function updown($res,$id,$link){
		$allnum = count($res);
		if($allnum <= 1){
			return "<ul><li>上一页:没有了</li><li>下一页:没有了</li></ul>";
		}
		$pre = 0;$after = 0;$cur = 0;
		for ($i = 0; $i < $allnum; $i++) {
			if($res[$i]['classid'] == $id){
				$cur = $i;
				break;
			}
		}
		if($cur == 0){
			$after = $cur + 1;
			return "<ul><li>上一页:没有了</li><li>下一页:<a href='".url($link.$res[$after]['classid'])."'>".$res[$after]['title']."</a></li></ul>";
		}
		if($cur == $allnum - 1){
			$pre = $cur - 1;
			return "<ul><li>上一页:<a href='".url($link.$res[$pre]['classid'])."'>".$res[$pre]['title']."</a></li><li>下一页:没有了</li></ul>";
		}
		$pre = $cur - 1;
		$after = $cur + 1;
		return "<ul><li>上一页:<a href='".url($link.$res[$pre]['classid'])."'>".$res[$pre]['title']."</a></li><li>下一页:<a href='".url($link.$res[$after]['classid'])."'>".$res[$after]['title']."</a></li></ul>";
	}
	// Hook::add('app_begin','app\\admin\\behavior\\CheckLogin');
