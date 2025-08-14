<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body>
    <div class = container>
        <form method="post" action="/web/jsp/test/test05.jsp">
            <div><h2>길이 변환</h2></div>
            <div><input type="text" class="form-control" name="inputNum">cm</div>
            <div>
                    <label>인치<input type="checkbox" name="units" value="inch"></label>
                    <label>야드<input type="checkbox" name="units" value="yard"></label>
                    <label>피트<input type="checkbox" name="units" value="feet"></label>
                    <label>미터<input type="checkbox" name="units" value="meter"></label>
            </div>
            <div>
                <button type="submit" class="btn btn-success">변환</button>
            </div>
        </form>
    </div>
</body>
</html>
