<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>能力规范文稿管理系统</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
    <style type="text/css">
        .header-wrap{
            width:100%;
            height: 50px;
            padding-left: 5px;
        }

        /*头文件*/
        .header{
            width:1120px;
            margin:0 auto;
            background-color:#cae5ca;
            text-align:center;
            height: 130px;
        }
        .header p{
            font-size:30px;
            line-height: 130px;
        }
        /*登录*/
        .header-login{
        	text-align: right;
            height: 60px;
            width: 1118px;
            margin: 0 auto;
            border:1px solid #ccc;
        	margin-bottom: 20px;

        }
        .user-info{
        	line-height: 60px;
        	font-size: 18px;
        }
        .user-info a{
        	display: inline-block;
        	margin-right: 10px;
        }
        .user-info p{
        	display: inline-block;
        }
        .content{
        	width: 1118px;
        	margin: 0 auto;
        	border-top: none;
        }
        .content-left{
        	width: 260px;
        	display: inline-block;
        	float: left;

        }
        .content-right{
        	width: 840px;
        	display: inline-block;
        	float: right;

        }
		.content-left a{
			display: block;
			border:1px solid #C9C9C9;
			height: 50px;
			line-height: 50px;
			font-size: 18px;
			padding-left: 25px;
		}
		.content-left a:hover{
			background-color:#5FB878; 
			color: white;
		}
		.left-a{
			border-top: none;
		}
		.active{
			background-color:#5FB878; 
			color: white;
		}
		.content-right h3{
			height: 40px;
			line-height: 40px;
			border:1px solid #ccc;
			font-size: 16px;
			padding-left: 15px;
		}
		.content-main{
			width: 838px;
			border:1px solid #ccc;
			border-top: none;
		}
		.content-main ul{
			padding-top: 70px;
		}
		.content-main ul li{
			font-size: 20px;
			margin-bottom: 15px;
			margin-left: 150px;
		}
		.content-main li>div{
			display: inline-block;
		}
		.content-main li div:first-child{
			font-size: 18px;
			width: 150px;

		}
		.layui-form label{
			display: inline-block;
		}
		.layui-form div>div{
			display: inline-block;
		}
		.layui-layedit-tool{
			width: 600px;
		}
		.layui-layedit-iframe{
			width: 600px;
			height: 266px;
		}

		.form-btn div{
			display: inline-block;
		}

		.layui-form-checkbox {
		    height: 16px;
		    line-height: 16px;
		    margin-right: 0px;
		    margin-top: -2px;
		    padding-right: 16px;
		}
		.layui-form-checkbox i {
		    width: 25px;
		}
		.layui-form-checkbox{
			margin-left: 84px;
		}

		.content-right-bottom{
			width: 838px;
			border-top:1px solid #ccc;
			height: 300px;	
			margin-top: 150px;
		}




















        /*footer*/
        .footer{
            width: 100%;
            float: left;
        }
        .footer p{
            color: black;
            line-height: 50px;
            text-align: center;

        }
    </style>
</head>
<body>
	    <div class="header-wrap">
	        <div class="header">
	            <p>能力规范文稿管理系统</p>
	        </div>
	        <div class="header-login">
				<div class="user-info">
					<p>欢迎您</p>
					<%
					out.println((String)session.getAttribute("name"));
					%>
					<p>!</p>
					<a href="logout.jsp" class="layui-btn layui-btn-nomal">注销</a>
				</div>
	        </div>
	        <div class="content">
	        	<div class="content-left">
	        		<a href="login-index.jsp" >个人信息<span style="margin-left: 120px;">></span></a>
	        		<a href="login-list.jsp" style="border-top: none;">提案查看<span style="margin-left: 120px;">></span></a>
	        		<a href="login-tian.jsp" style="border-top: none;" class="active">提案编制<span style="margin-left: 120px;">></span></a>
	        		<a href="login-guifan.jsp" style="border-top: none;">规范查看<span style="margin-left: 120px;">></span></a>
	        		<a href="login-guifanwrite.jsp" style="border-top: none;">规范编制<span style="margin-left: 120px;">></span></a>
	        	</div>
	        	<div class="content-right">
	        		<h3>提案编制</h3>
	        		<div class="content-main">
						<form action="" class="layui-form" style="width: 730px;margin: 0 auto;padding-top: 20px;">
							<div style="margin-top: 10px;">
								<label  for="title" style="font-size: 16px;">提案名称：</label>
								<div style="margin-top: 10px;width: 611px;">
									 <input type="text" name="title" id="title" placeholder="请输入标题" autocomplete="off" class="layui-input" style="font-size: 16px;">
								</div>
							</div>
							<div style="margin-top:  30px;">
								<label  for="content" style="font-size: 16px;vertical-align: top;padding-top: 10px;">提案内容：</label>
								<div  style="background-color: white;margin-top: 10px;width: 600px;">
									<textarea placeholder="请输入内容" name="content"   class="layui-textarea" id="content"   style="resize: none;height: 190px;font-size: 16px;"></textarea>
								</div>
							</div>
							<div style="margin-top: 15px;" class="form-btn">
								<div style="float: left;">
									<input type="checkbox"><span style="height: 40px;line-height: 40px;margin-left: 5px;">我已阅读<a href="#" style="color: red">提案建议</a></span>
								</div>
								<div style="float: right;margin-right: 32px;display: inline-block;">
									<input type="submit" name="submit" value="打印" class="layui-btn">
									<input type="submit" name="submit" value="保存" class="layui-btn">
									<input type="submit" name="submit" value="提交" class="layui-btn">
								</div>
							</div>
						</form>
						<div class="content-right-bottom" style="padding-top: 45px;">
	        				<table  class="layui-table" style="width: 750px;margin: 0 auto;">
								<tr style="height: 40px;background-color: #C9C9C9">
									<th style="position: relative;width: 40px;text-align: center;"><input id="checkbox-1" type="checkbox" style="position: absolute;top: 13px;left: 14px;"><p style="margin-left: 10px;">全选</p></th>
									<th style="width: 50px;">提案ID</th>
									<th width="120px">提案名称</th>
									<th style="width: 60px;">提交时间</th>
									<th style="width: 50px;">提案状态</th>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td>01</td>
									<td width="120px"><a href="login-tian-content.jsp">提案1</a></td>
									<td>2017-8-22</td>
									<td>审议中</td>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td>02</td>
									<td><a href="login-tian-content.jsp">提案2</a></td>
									<td>2017-8-22</td>
									<td>审议中</td>
								</tr>
							</table>
							<div style="margin-top: 20px;float: right;margin-right: 50px;">
								<a href="#" class="layui-btn layui-btn-nomal" style="width: 120px;">打印</a>
								<a href="javascript:0;" class="layui-btn layui-btn-primary btn-remove"  style="width: 100px;">撤销</a>
							</div>
	        			</div>

	        		</div>

	        	</div>
	        </div>
        	<div class="footer">
        		<p>2018-软工导论小学期</p>
   		    </div>
	    </div>

		<script>
			layui.use('layedit', function(){
			  var layedit = layui.layedit
			  ,$ = layui.jquery;
			  
			  //构建一个默认的编辑器
			  var index = layedit.build('content');
			  
			  //编辑器外部操作
			  var active = {
			    content: function(){
			      alert(layedit.getContent(index)); //获取编辑器内容
			    }
			    ,text: function(){
			      alert(layedit.getText(index)); //获取编辑器纯文本内容
			    }
			    ,selection: function(){
			      alert(layedit.getSelection(index));
			    }
			  };
			  
			  
			});


		</script>

			    <script src="js/jquery.js"></script>
	    <script >
	    	$('.layui-table tr th input').on('click',function(){
	    		  var state = $("#checkbox-1").prop('checked');
          		  $('input[type="checkbox"]').prop('checked',state);
          		  $('#checkbox-1').prop('checked',state);
	    	});
	    	$('.btn-remove').on('click',function(){
	    		  var state=false;
          		  $('input[type="checkbox"]').prop('checked',state);
	    	})
	    				
	    </script>

</body>
</html>