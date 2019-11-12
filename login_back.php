<?php
	session_start();
	header("content-type:text/html;charset=utf-8");
	$adminName=$_POST['adminName'];
	$adminPwd=$_POST['adminPwd'];
	include("conn.php");
	$rs=mysql_query("select * from admins where adminName='$adminName' and adminPwd='$adminPwd'");
	$num=mysql_num_rows($rs);
	if($num>0){
		setcookie("sessionId",session_id());
		setcookie("adminName",$adminName);
		setcookie(md5("login"),md5("success".$adminName.session_id()));			
		echo '{"status":"10001","msg":"success"}';			
	}else{
		echo '{"status":"20001","msg":"用户名或密码错误！"}';
	}
?>