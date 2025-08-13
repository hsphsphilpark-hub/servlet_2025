<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 7:57
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
        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddhhmmss");
        String now_date_string = formatter.format(now);
        int now_year = Integer.parseInt(now_date_string.substring(0, 4));
        int now_month = Integer.parseInt(now_date_string.substring(4, 6));
        int now_day = Integer.parseInt(now_date_string.substring(6, 8));
        int now_hour = Integer.parseInt(now_date_string.substring(8,10));
        int now_minute = Integer.parseInt(now_date_string.substring(10,12));
        int now_second = Integer.parseInt(now_date_string.substring(12,14));

        int flag = 2;
        String flagParam = request.getParameter("flag");
        if (flagParam != null) {
            try {
                flag = Integer.parseInt(flagParam);
            } catch (NumberFormatException ignored) {
                flag = 2;
            }
        }
    %>

<%--  gpt제안  <%! // 숨김/표시 클래스 헬퍼: 숨김이면 d-none, 아니면 빈 문자열--%>
<%--        public String toggle(boolean hide){--%>
<%--            return hide ? "d-none" : "";--%>
<%--        }--%>
<%--    %>--%>

<%--    <div id="date" class="<%= toggle(flag == 1) %>">--%>
<%--        오늘 날짜 <b><%=now_year%></b>년 <b><%=now_month%></b>월 <b><%=now_day%></b>일--%>
<%--    </div>--%>

<%--    <div id="time" class="<%= toggle(flag == 0) %>">--%>
<%--        현재 시간 <b><%=now_hour%></b>시 <b><%=now_minute%></b>분 <b><%=now_second%></b>초--%>
<%--    </div>--%>

    <%!
        public String show_date(int flag){
            if(flag==1){
                return "d-none";
            }else {
                return "";
            }
        }
    %>
    <%!
        public String show_time(int flag){
            if(flag==0){
                return "d-none";
            }else {
                return "";
            }
        }
    %>

    <div id="date" class="<%=show_date(flag)%>">
        오늘 날짜 <b><%=now_year%></b>년 <b><%=now_month%></b>월 <b><%=now_day%></b>일
    </div>

    <div id="time" class="<%=show_time(flag)%>">
        현재 시간 <b><%=now_hour%></b>시 <b><%=now_minute%></b>분 <b><%=now_second%></b>초
    </div>
</body>
</html>
