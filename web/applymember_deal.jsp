<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="Connector" scope="page" class="ConnectDB.Connector"></jsp:useBean>
<%
    String name = request.getParameter("name");
    session.setAttribute("name",name);
    String sex = request.getParameter("sex");
    String birthday = request.getParameter("birthday");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String referrer = request.getParameter("referrer");
    String branch = request.getParameter("branch");
    if(branch.equals("0"))
    {
        branch="分会1";
    }
    else if (branch.equals("1"))
    {
        branch="分会2";
    }
    else if (branch.equals("2"))
    {
        branch="分会3";
    }
    String community =request.getParameter("community");
    if(community.equals("0"))
    {
        community="专委会1";
    }
    else if (community.equals("1"))
    {
        community="专委会2";
    }
    else if (community.equals("2"))
    {
        community="专委会3";
    }
    String username = (String)session.getAttribute("username");
    Connector.Info(username,name,sex,birthday,address,phone,referrer,branch,community);
    response.sendRedirect("login-index.jsp");
%>
</body>
</html>
