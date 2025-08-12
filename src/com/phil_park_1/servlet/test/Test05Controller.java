package com.phil_park_1.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int firstNumber = Integer.parseInt(request.getParameter("firstNumber"));

        for(int i = 1; i <= 9; i++ ){
            out.println(firstNumber + " X " + i + " = " + firstNumber * i +"<br>");
        }

    }

}

