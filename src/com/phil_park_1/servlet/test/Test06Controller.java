package com.phil_park_1.servlet.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class Test06Controller extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

        String stringNumber1 = request.getParameter("number1");
        String stringNumber2 = request.getParameter("number2");

        int intNumber1 = Integer.parseInt(stringNumber1);
        int intNumber2 = Integer.parseInt(stringNumber2);

        PrintWriter out = response.getWriter();

        //{"addition" : intNumber1 + intnumber2 ,
        // substraction: intNumber1 - intnumber2,
        // "multiplication" : intNumber1 * intnumber2,
        // "division" : intNumber1 / intnumber2 }
        out.println("{"
                + "\"addition\" : " + (intNumber1 + intNumber2) + ", "
                + "\"subtraction\" : " + (intNumber1 - intNumber2) + ", "
                + "\"multiplication\" : " + (intNumber1 * intNumber2) + ", "
                + "\"division\" : " + (intNumber1 / intNumber2)
                + "}");



    }
}
