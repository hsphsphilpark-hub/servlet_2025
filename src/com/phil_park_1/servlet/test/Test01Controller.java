package com.phil_park_1.servlet.ex;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Response Header
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

        // Response Body
        PrintWriter out = response.getWriter();
//        오늘 날짜 출력
//        브라우저에서 아래와 같이 오늘 날짜가 보이도록 서블릿을 작성하세요.
//        web.xml 파일을 통해 URL Mapping을 설정 하세요.
//                Content Type 은 text/plain으로 설정하세요.
//                출력 예시
//
//        오늘의 날짜는 2021년 5월 20일

        Date date = new Date();
        SimpleDateFormat formater = new SimpleDateFormat("yyyy년 M월 dd일");

        String dateString = "오늘의 날짜는 " + formater.format(date);

        out.println(dateString);
    }
}
