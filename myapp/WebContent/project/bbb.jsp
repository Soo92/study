<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <title>화면 상단 고정 메뉴 만드는 방법</title>
    <script defer src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <style>
       html, body {
    margin: 0px;
    padding: 0px;
      
    font-size: 12px;
}
      
#blog-header-container {
    position: fixed;
    top: 0px;
    left: 0px;
      
    width: 100%;
    height: 150px;
      
    background-color: #fff;
}
      
#blog-header-container h1 {
    position: relative;
    top: 40px;
    left: 20px;
      
    font-size: 2.0em;
    font-weight: bold;
}
      
#menu-container {
    position: fixed;
    top: 150px;
    left: 0px;
      
    width:100%;
    height: 50px;
    padding-left: 20px;
    padding-top: 15px;
    box-sizing: border-box;
      
    background-color: #3a3b40;
      
    -webkit-transition: padding-left 200ms linear;
    -moz-transition: padding-left 200ms linear;
    -ms-transition: padding-left 200ms linear;
    -o-transition: padding-left 200ms linear;
    transition: padding-left 200ms linear;
}
#menu-container.fixed {
    padding-left: 70px;
    opacity: 0.95;
    -webkit-box-shadow: 0 1px 5px 1px rgba(0,0,0,0.2);
    box-shadow: 0 1px 5px 1px rgba(0,0,0,0.2);
}
#menu-container .menu-item {
    font-size: 1.4em;
    font-weight: bold;
    color: #fff;
}
#menu-container .menu-icon {
    display: block !important;
    position: absolute;
    left: -50px;
    top: 14px;
      
    font-size: 1.6em;
    font-weight: bold;
    color: #fff;
      
    -webkit-transition: left 300ms linear;
    -moz-transition: left 300ms linear;
    -ms-transition: left 300ms linear;
    -o-transition: left 300ms linear;
    transition: left 300ms linear;
}
#menu-container .menu-icon.on {
    left: 15px;
}
      
#blog-container {
    margin-top:200px;
    padding: 20px;
}
    </style>
    <script>
        // 위에서 설명했던 자바스크립트 소스코드가 들어가는 위치
    </script>
</head>
<body>
    <div id="blog-header-container">
        <h1>블로그 화면 상단 메뉴 고정 테스트</h1>
    </div>
    <div id="menu-container">
        <div class="menu-icon" style="display:none;">Erz.</div>
        <div class="menu-item">블로그 상단 메뉴 예시</div>
    </div>
    <div id="blog-container">
        안녕하십니까? 에르차마토리 다이어리박스 운영자입니다.
        <br /><br />
        이 페이지는 상단에 고정되는 블로그 메뉴를 테스트하는 페이지입니다.
        <br /><br />
        스크롤바를 내리시오. (br 태그를 추가하시오)
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
       <br /> 태그를 이곳에 무한정 추가합니다.
    </div>
</body>
</html>