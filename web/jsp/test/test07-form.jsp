<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-18
  Time: 오전 1:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <div>
            <h2>메뉴검색</h2>
        </div>
        <form method="post" action="/web/jsp/test/test07.jsp">
            <div class="d-flex">
                <input type="text" class="form-control" name="menuInput">
                <label>4점 이하 제외<input type="checkbox" name="pointFlag" value="1"></label>
            </div>
            <div>
                <button type="submit" class="btn btn-success">검색</button>
            </div>
        </form>
    </div>
</body>
</html>
