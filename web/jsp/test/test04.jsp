<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-14
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>POST Method 1</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

    <%!
        // 나눗셈의 경우 0들어오는거 방지 하기

        public double caculate(double numA, double numB, String calType){
            if("+".equals(calType)){
                return numA + numB;
            } else if ("-".equals(calType)) {
                return  numA - numB;
            } else if ("*".equals(calType)) {
                return  numA * numB;
            } else if ("/".equals(calType)) {
                return  numA / numB;
            } else{
                return 0.0;
            }
        }

        public String caculateString(String calType){
            if("+".equals(calType)){
                return "+";
            } else if ("-".equals(calType)) {
                return  "-";
            } else if ("*".equals(calType)) {
                return  "X";
            } else if ("/".equals(calType)) {
                return  "%";
            } else{
                return "오류";
            }
        }
    %>
    <%
        // 1) POST 인코딩: 파라미터 읽기 전에!
        request.setCharacterEncoding("UTF-8");

        double numA = Double.parseDouble(request.getParameter("numA"));
        double numB = Double.parseDouble(request.getParameter("numB"));
        String calType = request.getParameter("calType");
    %>
    <div class="container">
        <div>
            <h2>계산결과</h2>
        </div>
        <div class="d-flex">
            <h1><%=numA%> <%=caculateString(calType)%> <%=numB%> = <span class="text-primary"><%=caculate(numA,numB,calType)%></span></h1>
        </div>
    </div>
</body>
</html>
