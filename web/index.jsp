<%@ page contentType="text/html;charset=UTF-8" language="java" import="DBCompare.CompareIn" %>
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
      text-align: center;
      height: 60px;
      width: 1118px;
      margin: 0 auto;
      border:1px solid #ccc;
    }
    .header-login label{
      font-size: 18px;
    }
    .header-login input[type='text']{
      height: 25px;
      width: 200px;
    }
    .header-login input[type='password']{
      height: 25px;
      width: 200px;
    }

    .header-login form>div{
      margin-top: 18px;
      display: inline-block;
    }
    .header-login input[type='submit']{
      margin-left: 10px;
    }
    .header-login a{
    }

    .content-1{
      width: 1118px;
      height: 730px;
      border:1px solid #ccc;
      margin: 0 auto;
      border-top: none;
    }
    .content-main{
      padding: 40px 100px;
      height: 500px;
    }
    .content-main>p{
      font-size: 16px;
      font-weight: bold;

    }
    .content-main1{
      margin-top: 5px;
      height: 200px;

    }
    .content-main1 table{
      padding: 20px 20px;
    }
    .layui-table a:hover{
      color:#5FB878;
    }

    /*footer*/
    .footer{
      height: 50px;
      width: 1120px;
      margin: 0 auto;
      text-align: center;
    }
    .footer p{
      color: black;
      line-height: 50px;

    }



  </style>
</head>
<body>



<div class="header-wrap">
  <div class="header">
    <p>能力规范文稿管理系统</p>
  </div>
  <div class="header-login">
    <form action="midle.jsp" method="get">
      <div>
        <label for="username">
          用户名:
        </label>
        <input type="text" id="username" name="username">
      </div>
      <div style="margin-left: 30px;">
        <label for="password">
          密码:
        </label>
        <input type="password" id="password" name="password">
      </div>
      <div>
        <input type="submit" class="layui-btn layui-btn-normal layui-btn-small" value="登录" >
        <input type="button" class="layui-btn layui-btn-normal layui-btn-small" value="注册"onclick="location='register.jsp'">
      </div>
    </form>

  </div>
  <div class="content-1">
    <div class="content-main">
      <p style="margin-left: 5px;">规范列表</p>
      <div class="content-main1">
        <table border='1' width="100%" class="layui-table" lay-even>
          <tr>
            <td>规范公告</td>
            <td>发布时间</td>
          </tr>
          <tr><td><a href="#">关于草案评审的工作规范</a></td><td>2017/06/01</td></tr>
          <tr><td><a href="#">管理系统申请资格规范</a></td><td>2017/05/30</td></tr>
          <tr><td><a href="#">提案草稿审批规范</a></td><td>2017/05/20</td></tr>
          <tr><td><a href="#">成立分组规范</a></td><td>2017/05/20</td></tr>
          <tr><td><a href="#">草案详情填写规范</a></td><td>2017/05/20</td></tr>
          <tr><td><a href="#">数据管理规范</a></td><td>2017/05/20</td></tr>
        </table>
      </div>
    </div>
  </div>
  <div class="footer">
    <p>2018-软工导论小学期</p>
  </div>
</div>




</body>
</html>
