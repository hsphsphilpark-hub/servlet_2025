<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Method - form 태그</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

<%--전달받은 키와 몸무게 정보로 아래 공식을 사용해 BMI 수치를 계산하고, 결과가 브라우저 화면에 표시되도록 작성하세요.--%>
<%--BMI 수치 계산 공식--%>

<%--BMI = 몸무게 / ((키 / 100.0) * (키 / 100.0));--%>
<%--수치 범위	결과--%>
<%--18.5 미만	저체중--%>
<%--18.5 이상 ~ 25 미만	정상--%>
<%--25 이상 ~ 30 미만	과체중--%>
<%--30 이상	비만--%>

    <%
        double weight = Double.parseDouble(request.getParameter("weight"));
        double height = Double.parseDouble(request.getParameter("height"));

        double bmi =  weight / ((height / 100.0) * (height / 100.0));

    %>
    <%!
        public String bmi_check(double bmi){
            if(bmi >= 30){
                return "비만";
            } else if (bmi >= 25) {
                return "과체중";
            } else if (bmi >= 18.5) {
                return "정상";
            }else{
                return "저체중";
            }
        }
    %>

    <div class="container">
        <div><h2>BMI 측정 결과</h2></div>
        <div>당신은 <span class="text-info"><%=bmi_check(bmi)%></span>입니다.</div>
        <div>bmi수치 : <%=bmi%></div>
    </div>
</body>
</html>
