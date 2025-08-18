<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-18
  Time: 오후 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
    <%
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<String, Object>() {
            {
                put("id", 1000);
                put("title", "아몬드");
                put("author", "손원평");
                put("publisher", "창비");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
            }
        };
        list.add(map);

        map = new HashMap<String, Object>() {
            {
                put("id", 1001);
                put("title", "사피엔스");
                put("author", "유발 하라리");
                put("publisher", "김영사");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
            }
        };
        list.add(map);

        map = new HashMap<String, Object>() {
            {
                put("id", 1002);
                put("title", "코스모스");
                put("author", "칼 세이건");
                put("publisher", "사이언스북");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
            }
        };
        list.add(map);

        map = new HashMap<String, Object>() {
            {
                put("id", 1003);
                put("title", "나미야 잡화점의 기적");
                put("author", "히가시노 게이고");
                put("publisher", "현대문학");
                put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
            }
        };
        list.add(map);
    %>

    <div class="container">
        <div>
            <h2>책 목록</h2>
        </div>
        <div class="d-flex">
            <div class="col-1">id</div>
            <div class="col-1">표지</div>
            <div class="col-6">제목</div>
        </div>
        <hr>
        <% for(Map<String, Object> book : list){%>
        <form method="post" action="/web/jsp/test/test08.jsp">
            <div class="d-flex">
                <div class="col-1"><%= book.get("id") %></div>
                <div class="col-1"><img src="<%= book.get("image")%>" width="50" height="75"></div>
                <button type="submit" class="book-form-button">
                    <div class="col-6"><%= book.get("title") %></div>
                </button>
            <input type="hidden" name="inputId" value="<%= book.get("id") %>" class="btn btn-link p-0 text-left">
            </div>
        </form>
        <hr>
        <%}%>
    </div>
</body>
</html>
