<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form method="post" action="/web/jsp/ex/ex03.jsp">
        <label>닉네임</label><input type="text" name="nickname">
        <br>
        <h4>좋아하는 동물을 고르세요</h4>
        <label>고양이<input type="radio" name="animal" value="고양이"></label>
        <label>호랑이<input type="radio" name="animal" value="호랑이"></label>
        <label>쌀숭이<input type="radio" name="animal" value="쌀숭이"></label>
        <br>
        <h4>좋아하는 과일을 고르세요</h4>
        <select name="fruit">
            <option value="바나나">바나나</option>
            <option value="딸기">딸기</option>
            <option value="복숭아">복숭아</option>
        </select>
        <button type="submit" >입력</button>
    </form>
</body>
</html>
