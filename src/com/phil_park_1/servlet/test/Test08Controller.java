package com.phil_park_1.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        //검색어를 파라미터로 전달 받는다
        String word = request.getParameter("word");

        List<String> list = new ArrayList<>(Arrays.asList(
                "강남역 최고 맛집 소개 합니다.",
                "오늘 기분 좋은 일이 있었네요.",
                "역시 맛집 데이트가 제일 좋네요.",
                "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
                "자축 저 오늘 생일 이에요."));

        out.print("" +
                "<html>\n" +
                    "<head><title>검색하기</title></head>\n"+
                    "<body>\n");

        for(String listItem :list){
            if(listItem.contains(word)){

                //문자열안의 word를 <b>word</b>로 바꿔주기
                String newSentence = listItem.replace(word,"<b>"+word+"</b>");

                out.print("<div>" + newSentence + "</div><hr>\n");
            }
        }

        out.print("</body>\n" +
                "</html>");
    }
}
