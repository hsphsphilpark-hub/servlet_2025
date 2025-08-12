package com.phil_park_1.servlet.ex;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test02Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

//        시간 출력
//        브라우저에서 아래와 같은 형태로 현재 시간이 보이도록 서블릿을 작성하세요.
//                web.xml 파일을 통해 URL 매핑을 설정하세요.
//                Content Type은 text/plain으로 설정하세요.
//        시간은 24시간 형식으로 표시되도록 하세요.
//        출력 예시
//
//        현재 시간은 14시 52분 43초 입니다.

        Date date = new Date();

        SimpleDateFormat formater = new SimpleDateFormat("H시 mm분 ss초");
        String strDate = "현재 시간은 " + formater.format(date) + "입니다";
        out.println(strDate);


    }
}
