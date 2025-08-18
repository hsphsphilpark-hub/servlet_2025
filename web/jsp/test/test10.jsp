<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <style>
        body { margin: 0; font-family: sans-serif; }
        .container { display: flex; flex-wrap: wrap; }
        .box {
            flex: 1 1 300px;  /* 최소 300px 크기 확보, 나머지는 자동 */
            margin: 10px;
            background: lightblue;
            padding: 20px;
            text-align: center;
        }

        @media (max-width: 600px) {
            .box { flex: 1 1 100%; }  /* 모바일에서는 한 줄에 하나씩 */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="box">박스 1</div>
    <div class="box">박스 2</div>
    <div class="box">박스 3</div>
</div>
</body>
</html>
