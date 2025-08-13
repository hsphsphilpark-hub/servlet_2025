<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
    <div>

<%--        form 태그가 아니라 href로 링크연결해서 값 집어넣기도 가능--%>
        <h2>날짜, 시간 링크</h2>
        <form method="get" action="/web/jsp/test/test03.jsp">
            <input type="hidden" name="flag" value="1">
            <button type="submit" class="btn btn-primary">현재 시간 확인</button>
        </form>
        <form method="get" action="/web/jsp/test/test03.jsp">
            <input type="hidden" name="flag" value="0">
            <button type="submit" class="btn btn-success">현재 날짜 확인</button>
        </form>
    </div>
</body>
</html>
