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
    <h2 class="text-center">검색 결과</h2>
    <table class="table">
        <thead>
            <tr>
                <th>메뉴</th>
                <th>상호</th>
                <th>별점</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(Map<String, Object> menulist : list){
                if(menulist.get("menu").equals(menuInput)){
                    if(("1".equals(pointFlag)&&(Double)menulist.get("point") > 4.0)||(!"1".equals(pointFlag))){%>
                    <!--if((!"1".equals(pointFlag) || (Double)menulist.get("point") > 4.0)
                            ||는 앞이 참이면 뒤에 검사 하지 않는다 그러므로 || 뒤에 앞에 조건이 거짓이면 이라는 조건 쓸 필요 없음 -->
            <tr>
                <td><%= menulist.get("menu")%></td>
                <td><%= menulist.get("name")%></td>
                <td><%= menulist.get("point")%></td>
            </tr>
        <%            }
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>