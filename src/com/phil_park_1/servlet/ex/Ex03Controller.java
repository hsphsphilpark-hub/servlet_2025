package com.phil_park_1.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
//        response.setContentType("text/html");
        response.setContentType("application/json");

        //이름과 생년월일은 전달 받고
        //이름과 나이를 html로 구성
        PrintWriter out = response.getWriter();
        // request 에서 name이란 파라미터 이름으로 값을 꺼내 쓸테니 name이란 이름으로 이름을 전달하라!
        String name = request.getParameter("name");
        // request에서 birthday 이란 파라미터 이름으로 19960420형식으로 생년월일을 꺼내 쓸테니
        // birthday라는 이름으로 생년월일을 전달해라
        String birthday = request.getParameter("birthday");

        String yearString = birthday.substring(0,4);
        int yearInt = Integer.parseInt(yearString);

        int age = 2025 - yearInt;

//        out.println("" +
//                    "<html>" +
//                    "<head><title>정보</head></title>\n" +
//                    "<body>\n" +
//                        "<h3>이름 : " + name + "</h3>\n" +
//                        "<h3>나이 : " + age + "</h3>\n" +
//                    "</body>\n" +
//                    "</html>");
        // 이름과 나이 데이터를 응답에 담는다.
        // 박홍석, 28
        // 응답에 데이터를 담기 위한 !!문자열!! 규격
        // json(Javascript Object Notation)
        // ["박홍석","신창섭","조재윤"]
        // {"name":"박홍석", "age":28}

        out.println("{\"name:\":"+ name + "\",\"age\":" + age + "}");

    }

}

