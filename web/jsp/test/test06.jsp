<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
        <%
            List<String> goodsList = Arrays.asList(new String[]{
                    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
            });
        %>
        <div class="container">
                <div><h2>장 목록</h2></div>
                <div class="d-flex justify-content-center">
                    <div class="col-5">번호</div>
                    <div class="col-5">품목</div>
                    <hr>
                </div>
                <% for(int i = 0; i<goodsList.size();i++){%>
                <div class="d-flex justify-content-center">
                    <div class="col-5"><%= i + 1 %></div>
                    <div class="col-5"><%= goodsList.get(i) %></div>
                </div>
                <hr>
                <% } %>
        </div>
</body>
</html>
