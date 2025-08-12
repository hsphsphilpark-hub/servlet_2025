package com.phil_park_1.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String selfIntroduction = request.getParameter("selfIntroduction");

        out.println("<!DOCTYPE html>\n");
        out.println("<html>\n");
        out.println("<head>\n");
        out.println("<title>Post Method1</title>\n");
        out.println("</head>\n");
        out.println("<body>\n");
        out.println("<h2>" + name + "님 지원이 완료 되었습니다</h2><hr>\n");
        out.println("<div>지원내용<div><br>\n");
        out.println("<div>" + selfIntroduction + "</div><br>\n");
        out.println("</body>\n");
        out.println("</html>\n");

    }
}
