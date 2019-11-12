<?php
	header("Content-type:text/html;charset=utf-8");
	include("conn.php");
	
	$rs=mysql_query("select * from message order by addTime desc");
	
	while($arr=mysql_fetch_array($rs)){
		if(!empty($arr[reply])){
			echo '<ul><li></li>
				  <li class="li_author"><img src="face2/'.$arr[face].'" width="60" height="60"><p>ID:'.$arr[author].'</p></li>
				  <li class="li_title">标 题:'.$arr[title].'</li>
				  <li class="li_content">内容: '.$arr[content].'</li>
					<li class="li_reply">管理员回复:'.$arr[reply].'</li>
				  <li>发帖时间:'.$arr[addTime].'</li>
				  <li class="cz"><a href="#" class="aaa" messageId='.$arr[messageId].'>回复</a>|<a href="#" class="bbb" messageId='.$arr[messageId].'>删除</a></li> 
				  </ul>';
		}else {
			echo '<ul><li></li>
				  <li class="li_author"><img src="face2/'.$arr[face].'" width="60" height="60"><p>ID:'.$arr[author].'</p></li>
				  <li class="li_title">标 题:'.$arr[title].'</li>
				  <li class="li_content">内容: '.$arr[content].'</li>
				  <li>发帖时间:'.$arr[addTime].'</li>
				  <li class="cz"><a href="#" class="aaa" messageId='.$arr[messageId].'>回复</a>|<a href="#" class="bbb" messageId='.$arr[messageId].'>删除</a></li> 
				  </ul>';
		}

	}
?>