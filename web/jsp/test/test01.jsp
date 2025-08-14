<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: phil_
  Date: 2025-08-13
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--1. 점수들의 평균 구하기--%>
<%--스크립틀릿(<% %>) 문법을 사용해 아래 점수들의 평균을 구하세요.--%>
<%int[] scores = {80, 90, 100, 95, 80};%>
<%double avg=0;
    for(int i = 0; i < scores.length; i++){
        avg += scores[i];
    }
    avg /= scores.length;
%>
<h2>점수 평균은 <%=avg%>점 입니다.</h2>

<%--2. 채점 결과--%>
<%--아래 채점표를 이용해 채점 결과 점수를 계산하세요.--%>
<%--정답(O)일 경우 10점, 오답(X)일 경우 0점으로 계산합니다.--%>
<%List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});%>
<%
  int score = 0;
  for(String answer : scoreList){
      if("O".equals(answer)){
          score += 10;
      }
  }
%>
<h2>채점 결과는 <%=score%>점 입니다.</h2>




<%--    3. 1부터 N까지의 합계를 구하는 함수--%>
<%--    선언문(<%! %>) 문법을 이용해 1부터 N까지의 합을 구하는 함수를 작성하세요.--%>
<%--    위에서 만든 함수를 호출해 1부터 50까지의 합이 HTML 태그에 포함되도록 출력하세요.--%>
<%!

    public int getSum(int number) {
        int total = 0;
        for(int i = 1; i <= number; i++) {
            total += i;
        }
        return total;
    }
%>
<h2>1에서 50까지의 합은 <%=getSum(50)%></h2>

<%--    4. 나이 구하기--%>
<%--    주어진 생년월일을 이용해 현재 기준 나이를 구하세요.--%>
<%    String birthDay = "20010820"; %>
<%
    Date now = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
    String now_date_string = formatter.format(now);

    int birth_year = Integer.parseInt(birthDay.substring(0, 4));
    int birth_month = Integer.parseInt(birthDay.substring(4, 6));
    int birth_day = Integer.parseInt(birthDay.substring(6, 8));

    int now_year = Integer.parseInt(now_date_string.substring(0, 4));
    int now_month = Integer.parseInt(now_date_string.substring(4, 6));
    int now_day = Integer.parseInt(now_date_string.substring(6, 8));

    int age = now_year - birth_year;
    if (now_month < birth_month || (now_month == birth_month && now_day < birth_day)) {
        age--;
    }
%>
<h2><%=birthDay%>의 나이는 <%=age%>살 입니다.</h2>

<%--실습 과제(손에 익히기)--%>
<%--평균 서식: 평균을 소수점 0자리/1자리/2자리로 각각 출력해보기.--%>

<%int[] scores2 = {80, 90, 100, 95, 80};%>
<%double avg2=0;
    for(int i = 0; i < scores.length; i++){
        avg2 += scores[i];
    }
    avg2 /= scores.length;
%>
<h2>점수 평균은 <%= String.format("%.0f", avg) %>점 입니다.</h2>
<h2>점수 평균은 <%= String.format("%.1f", avg) %>점 입니다.</h2>
<h2>점수 평균은 <%= String.format("%.2f", avg) %>점 입니다.</h2>

<%--채점 확장: "O"=10점, "△"=5점, "X"=0점 규칙으로 바꾸고 점수 계산 함수로 분리.--%>
<%!
    public int scoreCaculate(List<String> scoreList){
        int score = 0;
        for(String answer : scoreList){
            if("O".equals(answer)){
                score += 10;
            } else if ("△".equals(answer)) {
                score += 5;
            }
        }
        return score;
    }
%>

<%List<String> scoreList2 = Arrays.asList(new String[]{"X", "O", "△", "O", "X", "△", "O", "△", "X", "O"});%>

<h2>채점 결과는 <%=scoreCaculate(scoreList2)%>점 입니다.</h2>

<%--합 함수 변형: 홀수만/짝수만의 합, 배열 범위 합(예: arr[l..r])으로 일반화.--%>
<%!
    public long sumOdd(int inputNum){
        long sum = 0;
        for(int i = 1; i <= inputNum; i+=2){
            sum += i;
        }
        return sum;
    }
    public long sumEven(int inputNum){
        long sum = 0;
        for(int i = 0; i <= inputNum; i+=2){
            sum += i;
        }
        return sum;
    }

    public long sumAll(int inputNum){
        long sum = 0;
        sum += (inputNum+(inputNum+1)/2);
        return sum;
    }
%>
<%--나이 엣지 케이스: 2월 29일 생일 입력 시 올해가 평년/윤년일 때 결과 비교.--%>

<%--JSP 베스트프랙티스: 같은 로직을 서블릿에서 계산 → JSP는 EL로 출력하는 방식으로 분리해보기.--%>
<!-- 이건 아직 안배워서 패스>

</body>
</html>
