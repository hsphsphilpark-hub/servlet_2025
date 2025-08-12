package com.phil_park_1.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String now = formatter.format(date);
        out.println("" +
                "<html>" +
                    "<head><title>뉴스 기사 출력</title></head>" +
                    "<body>" +
                        "<h1>[단독]고양이가 야옹해</h1>"+
                        "<div>기사 입력시간 : " + now + "</div>" +
                        "<hr>"+
                        "<div>끝</div>"+
                    "</body>" +
                "</html>");

    }
}
