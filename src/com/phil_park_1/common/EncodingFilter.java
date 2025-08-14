////package com.phil_park_1.common;
////
////import jakarta.servlet.*;
////import jakarta.servlet.annotation.WebFilter;
////import jakarta.servlet.annotation.WebServlet;
////
////import java.io.IOException;
////import java.io.UnsupportedEncodingException;
////
//////해당 필터를 거쳐갈 서블릿에 대한 url path패턴 적용
////// /servlet으로 시작하는 url mapping된 서블릿만 적용
//////@WebFilter("/servlet/**")
////
////// 모든 서블릿
////@WebFilter("/*")
////public class EncodingFilter implements Filter {
////
////    @Override
////    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
////
////        //공통적으로 처리될 항목
////        request.setCharacterEncoding("utf-8");
////        response.setCharacterEncoding("utf-8");
////
////        chain.doFilter(request,response);
////
////    }
////}
//
//
package com.phil_park_1.common;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(
        filterName = "EncodingFilter",
        urlPatterns = {"/*"},
        dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD}
)
public class EncodingFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        // (1) 인코딩 지정 — 파라미터 꺼내기 전에!
        request.setCharacterEncoding("UTF-8");   // POST 바디에 적용
        response.setCharacterEncoding("UTF-8");  // 응답 인코딩

        // (2) 응답 콘텐츠 타입에 charset까지 같이(없을 때만) 지정하는 습관
        if (response.getContentType() == null) {
            response.setContentType("text/html; charset=UTF-8");
        }

        // (3) 다음 필터/서블릿으로 넘김
        chain.doFilter(request, response);
    }

    @Override public void init(FilterConfig filterConfig) {}
    @Override public void destroy() {}
}

