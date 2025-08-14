<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>

    <%!
        public double changeParameter(double inputNum, String unit){
            if("inch".equals(unit)){
                return inputNum * 0.393701;
            } else if ("yard".equals(unit)) {
                return  inputNum * 0.010936;
            }else if("feet".equals(unit)) {
                return  inputNum * 0.032808;
            }else if("meter".equals(unit)) {
                return  inputNum * 0.01;
            }else{
                return 0;
            }
        }
    %>
    <%
        double inputNum = Double.parseDouble(request.getParameter("inputNum"));
        String[] units = request.getParameterValues("units");
        double inch = 0;
        double yard = 0;
        double feet = 0;
        double meter = 0;
        for (String unit : units) {
            if ("inch".equals(unit)) {
                inch = changeParameter(inputNum, unit);
            } else if ("yard".equals(unit)) {
                yard = changeParameter(inputNum, unit);
            } else if ("feet".equals(unit)) {
                feet = changeParameter(inputNum, unit);
            } else if ("meter".equals(unit)) {
                meter = changeParameter(inputNum, unit);
            } else {
                break;
            }
        }
        StringBuilder result = new StringBuilder();
        for (String unit : units) {
            if ("inch".equals(unit)) {
                result.append(inch).append("in<br>");
            } else if ("yard".equals(unit)) {
                result.append(yard).append("yard<br>");
            } else if ("feet".equals(unit)) {
                result.append(feet).append("ft<br>");
            } else if ("meter".equals(unit)) {
                result.append(meter).append("m<br>");
            } else {
                break;
            }
        }
    %>

    <div>
        <div><h2>변환 결과</h2></div>
        <div><h4><%= inputNum %>cm</h4></div>
        <hr>
        <div><h4><%= result.toString() %></h4></div>
    </div>
</body>
</html>
