<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
<%
    List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); }};
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); }};
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); }};
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); }};
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); }};
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); }};
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); }};
    list.add(map);
%>
<%
    String menuInput = request.getParameter("menuInput");
    String pointFlag = request.getParameter("pointFlag");
%>
<div class="container">
    <div><h2>검색 결과</h2></div>
    <div class="d-flex justify-content-center">
        <div class="col-3">메뉴</div>
        <div class="col-3">상호</div>
        <div class="col-3">별점</div>
    </div>
    <hr>
    <% for(Map<String, Object> menulist : list){ %>
    <%    if(menulist.get("menu").equals(menuInput)){ %>
    <%        if("1".equals(pointFlag)){ %>
    <%            if((Double)menulist.get("point") > 4.0){ %>
    <div class="d-flex justify-content-center">
        <div class="col-3"><%= menulist.get("menu")%></div>
        <div class="col-3"><%= menulist.get("name")%></div>
        <div class="col-3"><%= menulist.get("point")%></div>
    </div>
    <%            } %>
    <%        } else { %>
    <div class="d-flex justify-content-center">
        <div class="col-3"><%= menulist.get("menu")%></div>
        <div class="col-3"><%= menulist.get("name")%></div>
        <div class="col-3"><%= menulist.get("point")%></div>
    </div>
    <%        } %>
    <%    } %>
    <% } %>
</div>
</body>
</html>