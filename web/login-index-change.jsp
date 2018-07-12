<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>能力规范文稿管理系统</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
    <script src="js/jquery.js"></script>
    <style type="text/css">
        .header-wrap{
            width:100%;
            height: 50px;
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
        	height: 680px;
        	display: inline-block;
        }
        .content-right{
        	width: 840px;
        	height: 600px;
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
			height: 620px;
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
        /*footer*/
        .footer{
            width: 1120px;
            margin: 0 auto;
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
	        		<a href="login-index.jsp" class="active">个人信息<span style="margin-left: 120px;">></span></a>
	        		<a href="login-list.jsp" style="border-top: none;">提案查看<span style="margin-left: 120px;">></span></a>
	        		<a href="login-tian.jsp" style="border-top: none;">提案编制<span style="margin-left: 120px;">></span></a>
	        		<a href="login-guifan.jsp" style="border-top: none;">规范查看<span style="margin-left: 120px;">></span></a>
	        		<a href="login-guifanwrite.jsp" style="border-top: none;">规范编制<span style="margin-left: 120px;">></span></a>
	        	</div>
	        	<div class="content-right">
	        		<h3>个人信息修改</h3>
	        		<div class="content-main" style="position: relative;">
						<ul id="changeul">
							<li>
								<div>
									<p>姓名</p>
								</div>
								<div>
									<p><input type="text" name="name" id="name" value="达达"></p>
								</div>
							</li>
							<li>
								<div>
									<p>性别</p>
								</div>
								<div>
									<p><input type="text" name="sex" id="sex" value="男"></p>
								</div>
							</li>
							<li>
							<script>
								layui.use('laydate', function(){
								  var laydate = layui.laydate;
								});
							</script>
								<div style="width: 150px;">
									<p>出生日期</p>
								</div>
								<div>
									<p><input  type="text" value="1996-12-31"  onclick="layui.laydate({elem: this, festival: true})"></p>
								</div>
							</li>
							<li>
								<div>
									<p>家庭住址</p>
								</div>
								<div>
									<p><input type="text" name="address" id="address" value="北京市"></p>
								</div>
							</li>
							<li>
								<div>
									<p>联系方式</p>
								</div>
								<div>
									<p><input type="text" name="tel" id="tel" value="110"></p>
								</div>
							</li>
							<li>
								<div>
									<p>推荐人</p>
								</div>
								<div>
									<p><input type="text" name="tuijian" id="tuijian" value="达达"></p>
								</div>
							</li>
							<li>
								<div>
									<p>行分会</p>
								</div>
								<div>
									<p>行分会1</p>
								</div>
							</li>
							<li>
								<div>
									<p>专委会</p>
								</div>
								<div>
									<p>专委会1</p>
								</div>
							</li>							
						</ul>
						<div style="margin-left: 150px;padding-top: 30px;">
							<a href="login-index-change.jsp" class="layui-btn layui-btn-nomal"  style="width: 150px;">保存</a>
							<a href="login-index.jsp" class="layui-btn layui-btn-nomal"  style="width: 150px;">取消</a>
						</div>
	        		</div>
	        	</div>
	        </div>
			<div class="footer">
        		<p>2018-软工导论小学期</p>
   		    </div>	
	    </div>

</body>

</html>