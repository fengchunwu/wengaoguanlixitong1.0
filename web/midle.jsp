<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<
html>
<head>
    <title>TitleOnTheTop</title>
</head>
<body>
<jsp:useBean id="Connector" scope="page" class="ConnectDB.Connector" />
<jsp:useBean id="Comparer" class="DBCompare.CompareIn" scope="page"/>
<%
    String use=request.getParameter("username");
    String pas=request.getParameter("password");
    String name = Connector.Select(use,"name");
    boolean a=Comparer.doCompare(use,pas);
   if(a==true)
   {
       session.setAttribute("name",name);
       session.setAttribute("username",use);
      response.sendRedirect("login-index.jsp");
   }
   else
   {
       response.setCharacterEncoding("utf-8");
       PrintWriter Out =response.getWriter();
       Out.print("<script>alert('登陆失败,请重新输入！');window.location='index.jsp'</script>");
       Out.flush();
       Out.close();
   }
%>
</body>
</html>
