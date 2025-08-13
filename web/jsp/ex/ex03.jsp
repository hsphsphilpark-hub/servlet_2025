<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        String nickname = request.getParameter("nickname");
        // 좋아하는 동물 하나르르 전달 받고 보여준다.
        String animal = request.getParameter("animal");
        //좋아하는 과일 하나를 전달 받고 보여준다
        String fruit = request.getParameter("fruit");
    %>
    <h3><%=nickname%></h3>
    <h3><%=animal%></h3>
    <h3><%=fruit%></h3>

</body>
</html>
