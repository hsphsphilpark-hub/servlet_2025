package com.phil_park_1.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String strlist = "";
        for(int i=1; i<=30; i++){
            strlist += "<li>" + i + "번째 리스트</li>\n";
        }

        out.println(""+
                    "<html>\n"+
                        "<head><title>리스트 출력</title></head>\n" +
                        "<body><ul>"+strlist+"</ul></body>\n"+
                    "</html>");
    }
}
