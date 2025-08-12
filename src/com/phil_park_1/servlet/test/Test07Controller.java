package com.phil_park_1.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String address = request.getParameter("address");
        String card =  request.getParameter("card");
        String stringPrice = request.getParameter("stringPrice");

        out.print("" +
                  "<html>\n"+
                    "<head><title>주문하기</title></head>\n"+
                    "<body>");
        if(address.contains("서울시")){
            if(card.contains("신한카드")){
                out.print("결제 불가 카드입니다\n</body>");
                return;
            }
            else {
                out.print("\n" +
                        "<h3>" + address + "</h3>\n" +
                        "<hr>\n" +
                        "<div>결제 금액 : " + stringPrice + "원</div>\n" +
                        "\n");
            }
        }
        //if(!address.contains("서울시"))
        else{
            if(card.contains("신한카드")){
                out.print("결제 불가 카드입니다<br>\n");
            }
            out.print("배달 불가 지역 입니다\n");
        }
        out.print("</body>\n" +
                "</html>");
    }
}
