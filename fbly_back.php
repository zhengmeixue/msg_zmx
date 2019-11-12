<?php
	header("Content-type:text/html;charset=utf-8");
	include("conn.php");
	$auhtor=$_POST['author'];
	$title=$_POST['title'];
	$content=$_POST['content'];
	$face=$_POST['face'];
	$flag=mysql_query("insert into message (author,title,content,face,addTime) values ('$auhtor','$title','$content','$face',now())");
	if($flag){
		echo '留言成功...';
	}

	
?>