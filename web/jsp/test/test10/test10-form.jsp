<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <%
        Map<String, Object> artistInfo = new HashMap<>();
        artistInfo.put("name", "아이유");
        artistInfo.put("debute", 2008);
        artistInfo.put("agency", "EDAM엔터테인먼트");
        artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

        List<Map<String, Object>> musicList = new ArrayList<>();

        Map<String, Object> musicInfo = new HashMap<>();
        musicInfo.put("id", 1);
        musicInfo.put("title", "팔레트");
        musicInfo.put("album", "Palette");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
        musicInfo.put("time", 217);
        musicInfo.put("composer", "아이유");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 2);
        musicInfo.put("title", "좋은날");
        musicInfo.put("album", "Real");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
        musicInfo.put("time", 233);
        musicInfo.put("composer", "이민수");
        musicInfo.put("lyricist", "김이나");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 3);
        musicInfo.put("title", "밤편지");
        musicInfo.put("album", "palette");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
        musicInfo.put("time", 253);
        musicInfo.put("composer", "제휘,김희원");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 4);
        musicInfo.put("title", "삐삐");
        musicInfo.put("album", "삐삐");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
        musicInfo.put("time", 194);
        musicInfo.put("composer", "이종훈");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 5);
        musicInfo.put("title", "스물셋");
        musicInfo.put("album", "CHAT-SHIRE");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
        musicInfo.put("time", 194);
        musicInfo.put("composer", "아이유,이종훈,이채규");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 6);
        musicInfo.put("title", "Blueming");
        musicInfo.put("album", "Love poem");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
        musicInfo.put("time", 217);
        musicInfo.put("composer", "아이유,이종훈,이채규");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);
    %>
    <div id="wrap" class="container">
        <header class="d-flex">
            <h3 class="text-success">Melong</h3>
            <form method="get" action="/web/jsp/test/test10/test10.jsp">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" aria-describedby="button-addon2" name="music">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary btn-success" type="submit" id="button-addon2">검색</button>
                    </div>
                </div>
            </form>
        </header>
        <nav class="d-flex">
            <div class="col-2">멜룽차트</div>
            <div class="col-2">최신음악</div>
            <div class="col-2">장르음악</div>
            <div class="col-2">멜룽DJ</div>
            <div class="col-2">뮤직 어워드</div>
        </nav>
        <article class="d-flex">
            <div class="col-2">
                <img src="<%=artistInfo.get("photo")%>" height="75px" width="75px">
            </div>
            <div>
                <div><h4><%=artistInfo.get("name")%></h4></div>
                <div><%=artistInfo.get("agency")%></div>
                <div><%=artistInfo.get("debute")%>년</div>
            </div>
        </article>
        <main>
            <div></div>
            <div>
                <table class="table">
                    <thead>
                        <tr>
                            <th class="text-center">no</th>
                            <th class="text-center">제목</th>
                            <th class="text-center">앨범</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        for(Map<String, Object> list : musicList){
                            if(artistInfo.get("name").equals(list.get("singer"))){
                    %>
                        <tr>
                            <td class="text-center"><%= list.get("id")%></td>
                            <td class="text-center">
                                <form method="get" action="/web/jsp/test/test10/test10.jsp">
                                    <input type="hidden" name="inputId" value="<%=list.get("id")%>">
                                    <button type="submit" class="btn"><%= list.get("title")%></button>
                                </form>
                            </td>
                            <td class="text-center"><%= list.get("album")%></td>
                        </tr>
                    <%
                            }
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </main>
        <footer></footer>
    </div>
</body>
</html>
