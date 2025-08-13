<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 7:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>입력</title>
</head>
<body>

    <form method="post" action="/web/jsp/ex/ex02.jsp">
        <label>이름</label> <input type="text" name="name">
        <label>생년월일</label> <input type="text" name="birthday">
        <button type="submit">입력</button>
    </form>

</body>
</html>
