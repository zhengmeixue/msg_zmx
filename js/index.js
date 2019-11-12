		//加载字体
		Cufon.replace('h1');
		Cufon.replace('.tx p');
		Cufon.replace('.lyname p');
		Cufon.replace('.lytitle p');
		Cufon.replace('.lycontent p');
		Cufon.replace('.hf_banner');
		//加载字体
		
		//成功登录
			if($.getCookie(hex_md5("login"))==hex_md5("success"+$.getCookie("adminName")+$.getCookie("sessionId"))){
							 $("#loginSuccess").html("管理员"+$.getCookie("adminName")+"已上线")
						 $("#loginSuccess").show();
						 $(".leave").show();
						 $(".leave").click(function(){
							 location.href="loginout.php"
						 })					 
			}
		//成功登录
			var aaa;
			var bbb;
			var AmessageId;
		$(function(){
			//加载留言
			$.ajax({
				url:"index_back.php",
				type:"GET",
				cache:false,
				success:function(data){
					$("#lyright").html(data);
					goPage(1,4);
				},
				//登陆后显示回复删除
				complete:function(){
			if($.getCookie(hex_md5("login"))==hex_md5("success"+$.getCookie("adminName")+$.getCookie("sessionId"))){	
				var cz=document.getElementsByClassName('cz');
				// console.log(cz);
				// console.log(cz.length);
				for(var i=0;i<cz.length;i++){
					// console.log(i);
					cz[i].style.display="block";
				}
				//登陆后显示回复删除
				
			
				
				
			// 回复留言
			aaa = document.getElementsByClassName('aaa');
			// console.log(aaa);
			for(var i = 0;i < aaa.length;i++){
				aaa[i].onclick=function(){
					AmessageId=this.getAttribute('messageId');
					// console.log(AmessageId);
					$(".hf").show();
					$(".hfBtn").click(function(){
						$.ajax({
							url:"huifu_back.php",
							data:{reply:$("#reply").val(),messageId:AmessageId},
							type:"POST",
							success:function(data){
								// 弹出遮罩层,提示回复成功,关闭回复窗口,刷新页面.
								$(".hf").css("display","none");
								$("#zzc").show();
								$("#zzcShow").html(data);
								setTimeout(function(){
									window.location.href="index.php";
								},1000)
								

							}
						})
					})
				}
			}

			 $("#hfClose").click(function(){
				 $(".hf").css("display","none")
			 })
			// 回复留言
			
			//删除留言
			bbb=document.getElementsByClassName('bbb');
			console.log(bbb);
			for (var j=0;j<bbb.length;j++) {
				bbb[j].onclick=function(){
					BmessageId=this.getAttribute('messageId');
					$.ajax({
							url:"shanchu_back.php",
							data:{messageId:BmessageId},
							type:"GET",
							success:function(data){
								$("#zzc").show();
								$("#zzcShow").html(data);
								setTimeout(function(){
									window.location.href="index.php";
								},1000)
							}						
					})
				}
			}
			
			//删除留言
			}					
				},
			//加载留言
			})
			//显示登录窗
			$("#loginBtn").click(function(){
				$("#loginWin").show();
			});
			//显示登录窗
			$("#close").click(function(){
				$("#loginWin").css('display','none');
			})
			$("#fbly").click(function(){
				var reg = document.getElementById('reg');
				var formdata = new FormData(reg);
				$.ajax({
					url:"fbly_back.php",
					data:formdata,
					type:"POST",
					processData:false,
					contentType:false,
					dataType:"html",
					success:function(data){
								$("#zzc").show();
								$("#zzcShow").html(data);
								setTimeout(function(){
									window.location.href="index.php";
								},1000)
							}
				})
			})
			$("#lbtn").click(function(){
				$.ajax({
					url:"login_back.php",
					type:"POST",
					data:{adminName:$("#adminName").val(),adminPwd:$("#adminPwd").val()},
					dataType:"json",
					success:function(data){
						if(data.status=="10001"){
							$("#loginWin").css("display","none");
									 if($.getCookie(hex_md5("login"))==hex_md5("success"+$.getCookie("adminName")+$.getCookie("sessionId"))){
			 $("#loginSuccess").html("管理员"+$.getCookie("adminName")+"已上线")
		 }
							location.href="index.php"
							$("#loginSuccess").show();
						}else{alert("用户名或密码错误")}
					}
				})
			})

		})
		  var select = document.getElementById("face"); 
		for(var i=1;i<=32;i++){
		var option = document.createElement("option"); 
		option.appendChild(document.createTextNode(i+'.jpg')); 
		select.appendChild(option);
		}
		var img1 =document.getElementById('img1');
		face.onchange=function(){
			img1.src="face2/"+this.value;
		}
		
		
			function goPage(pno,psize){
			 var lyright=document.getElementById("lyright");
			 var lyrights=lyright.querySelectorAll("ul");
			 var num = lyrights.length;
			  var totalPage = 0;//总页数
			  var pageSize = psize;//每页显示行数
			  var str="<div id='yeshu'>";
			  //总共分几页
			  if(num/pageSize > parseInt(num/pageSize)){
			      totalPage=parseInt(num/pageSize)+1;
			    }else{
			      totalPage=parseInt(num/pageSize);
			    }
			  var currentPage = pno;//当前页数
			  var startRow = (currentPage - 1) * pageSize+1;//开始显示的行 31
			    var endRow = currentPage * pageSize;//结束显示的行  40
			    endRow = (endRow > num)? num : endRow;  //40
			    //遍历显示数据实现分页
			  for(var i=1;i<(num+1);i++){
			    var irow = lyrights[i-1];
			    if(i>=startRow && i<=endRow){
			      irow.style.display = "block";
			    }else{
			      irow.style.display = "none";
			    }
			  }
			  var tempStr = "共"+num+"条记录 分"+totalPage+"页 当前第"+currentPage+"页";
			  if(currentPage>1){
			    tempStr += "<a href=\"#\" onClick=\"goPage("+(1)+","+psize+")\">首页</a>";
			    tempStr += "<a href=\"#\" onClick=\"goPage("+(currentPage-1)+","+psize+")\"><上一页</a>"
			  }else{
			    tempStr += "首页";
			    tempStr += "<上一页";
			  }
			  if(currentPage<totalPage){
			    tempStr += "<a href=\"#\" onClick=\"goPage("+(currentPage+1)+","+psize+")\">下一页></a>";
			    tempStr += "<a href=\"#\" onClick=\"goPage("+(totalPage)+","+psize+")\">尾页</a>";
			  }else{
			    tempStr += "下一页>";
			    tempStr += "尾页";
			  }
			//  if(totalPage>5&&currentPage<=3){
			// 	 currentPage=3;
			//  }
			//  if(totalPage-currentPage<2){
				 
			// 	 currentPage=totalPage-2;
			//  }
			//  for(var k=currentPage-2;k<=currentPage+2;k++){
				 
			// 	if(k<=0){
			// 		continue;
			// 	}            
			// 	 str+="<input type='button' value="+k+">";
			//  } 
			//  if(totalPage<=5){
			// 	 str="";
			// 	 for(var k=1;k<=totalPage;k++){
			// 		  str+="<input type='button' value="+k+">";
			// 	 }
			//  }
			// str+="</div>";
			  document.getElementById("yss").innerHTML = tempStr+"<input autocomplete=off id=t1 type=text>页<input type=button id=bt2 value=点击跳转>"+str;
			var bt2=document.getElementById("bt2");
				var yeshu=document.getElementById("yeshu");
			bt2.onclick=function(){
				if(document.getElementById("t1").value>totalPage){
					alert("请输入正确页数");
				}else{
					goPage(document.getElementById("t1").value,psize);
				}
				
			}
			var bts=document.getElementById("yeshu").querySelectorAll("input");
			 for(var i=0;i<bts.length;i++){
				bts[i].onclick=function(){
					var b=Number(this.value);
					goPage(b,psize);
				}
			 }
			
			}
