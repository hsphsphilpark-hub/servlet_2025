<%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-14
  Time: 오후 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>계산하기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
        <div class="container">
            <div>
                <h2>계산하기</h2>
            </div>
            <form method="post" action="/web/jsp/test/test04.jsp">
                <div class="d-flex justify-content-start">
                    <div>
                        <input type="text" name="numA" class="form-control">
                    </div>
                    <div>
                        <select name="calType" class="form-control">
                            <option value="+">+</option>
                            <option value="-">-</option>
                            <option value="*">X</option>
                            <option value="/">%</option>
                        </select>
                    </div>
                    <div>
                        <input type="text" name="numB" class="form-control">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-success">계산</button>
                    </div>
                </div>
            </form>
        </div>
</body>
</html>
