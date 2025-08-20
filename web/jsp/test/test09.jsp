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
    <style>
    </style>
</head>
<body>
    <%
        List<Map<String, String>> list = new ArrayList<>();
        Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); }};
        list.add(map);
    %>
    <%
        String selected = request.getParameter("selected");
        if(selected == null){
            selected="all";
        }
    %>
    <div id="wrap" class="container">
        <header class="">
            <h2 class="text-danger text-center">Sk broadband IPTV</h2>
        </header>
        <nav class="bg-danger">
            <div>
                <form method="get" action="/web/jsp/test/test09.jsp">
                    <button class="btn btn-danger col-2" name="selected" value="all" type="submit">전체</button>
                    <button class="btn btn-danger col-2" name="selected" value="지상파" type="submit">지상파</button>
                    <button class="btn btn-danger col-2" name="selected" value="드라마" type="submit">드라마</button>
                    <button class="btn btn-danger col-2" name="selected" value="예능" type="submit">예능</button>
                    <button class="btn btn-danger col-2" name="selected" value="스포츠" type="submit">스포츠</button>
                </form>
            </div>
        </nav>
        <article class="">
            <table class="table">
                <thead>
                    <tr>
                        <th class="col-4 text-center">채널</th>
                        <th class="col-4 text-center">채널명</th>
                        <th class="col-4 text-center">카테고리</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    for(Map<String, String> now : list){
                        if(now.get("category").equals(selected)||"all".equals(selected)){
                %>
                    <tr>
                        <td class="col-4 text-center"><%= now.get("ch") %></td>
                        <td class="col-4 text-center"><%= now.get("name")%></td>
                        <td class="col-4 text-center"><%= now.get("category")%></td>
                    </tr>
                <%}}%>
                </tbody>
            </table>
        </article>
        <footer>
            Copyright 2025. marondal All Rights Reserved.
        </footer>
    </div>
</body>
</html>
