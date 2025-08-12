package com.phil_park_1.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {

    private final List<Map<String, String>> userList = List.of(
            Map.of("id", "hagulu", "password", "asdf", "name", "김인규"),
            Map.of("id", "java123", "password", "pass123", "name", "이수민"),
            Map.of("id", "springdev", "password", "springpass", "name", "박지훈"),
            Map.of("id", "webmaster", "password", "webpass", "name", "최영희"),
            Map.of("id", "fullstack", "password", "stackpass", "name", "정민수"),
            Map.of("id", "pythonlover", "password", "pyth0n", "name", "김하늘"),
            Map.of("id", "gamer01", "password", "gamepass", "name", "윤도현"),
            Map.of("id", "admin", "password", "adminpass", "name", "한지민"),
            Map.of("id", "designpro", "password", "des1gn", "name", "서지우"),
            Map.of("id", "coderlife", "password", "c0d3", "name", "배민호"),
            Map.of("id", "datasci", "password", "data1234", "name", "오수정")
    );



    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String idInput = request.getParameter("idInput");
        String passwordInput = request.getParameter("passwordInput");

//        전달받은 id와 password가 아래에 주어진 사용자 정보와 일치하는지 확인하세요.
//// doPost 메소드 바깥쪽에 위치
//        private final Map<String, String> userMap =  new HashMap<String, String>() {
//            {
//                put("id", "hagulu");
//                put("password", "asdf");
//                put("name", "김인규");
//            }
//        };
//        id가 일치하지 않는 경우 → id가 일치하지 않습니다. 문장을 브라우저 화면에 보이도록 출력하세요.
//                password가 일치하지 않는 경우 → password가 일치하지 않습니다. 문장을 브라우저 화면에 보이도록 출력하세요.

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>사용자 정보 확인</title>");
        out.println("</head>");
        out.println("<body>");

        int idFlag = 0;
        int passwordFlag = 0;
        for(Map<String, String> matchedUser : userList){
            if(idInput.equals(matchedUser.get("id"))) {
                idFlag = 1;
                if(idFlag == 1){
                    if (matchedUser.get("password").equals(passwordInput)) {
                        passwordFlag = 1;
                    }
                    if(passwordFlag == 1){
                        out.println("<div>" + matchedUser.get("name") + "님 환영합니다</div>");
                        return;
                    }
                    else {
                        out.println("<div>password가 일치 하지 않습니다.<div>");
                        return;
                    }
                }
            }
        }
        if(idFlag == 0){
            out.println("<div>id가 존재하지 않습니다.<div>");
        }

        out.println("</body>");
        out.println("</html>");
    }
}
