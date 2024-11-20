<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Steam Guide</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Header/Navbar -->
    <header class="navbar">
        <div class="navbar-left">
            <button class="menu-icon">☰</button>
            <div class="logo">AI Steam Guide</div>
        </div>
        <div class="navbar-center">
            <div class="search-container">
                <input type="text" placeholder="Search" class="search-bar">
                <button class="search-btn">
                    <img src="<%= request.getContextPath() %>/images/search-icon.png" alt="Search Icon" class="search-icon">
                </button>
            </div>
        </div>        
        <div class="navbar-right">
            <button class="bookmark">
                <img src="<%= request.getContextPath() %>/images/bookmark.png" alt="bookmark" class="bookmark-img">
            </button>
            <button class="icon">
                <img src="<%= request.getContextPath() %>/images/notification-icon.png" alt="Notification Icon" class="icon-img">
            </button>            
            <button class="login-btn">로그인/회원가입</button>
        </div>
    </header>

    <!-- Login Section -->
    <main class="login-container">
        <h1 class="login-title">AI Steam Guide</h1>
        <form class="login-form" action="login_check.jsp" method="post">
            <input type="text" name="email" placeholder="이메일" class="input-field">
            <input type="password" name="password" placeholder="비밀번호" class="input-field">
            <div class="error-message">아이디 또는 비밀번호가 일치하지 않습니다.</div>
            <button type="submit" class="login-btn">로그인</button>
            <div class="form-options">
                <a href="find_id_pw.jsp" class="option-link">아이디/비밀번호 찾기</a>
                <a href="sign_up.jsp" class="option-link">회원가입</a>
            </div>
            <button type="button" class="steam-login-btn">
                <img src="<%= request.getContextPath() %>/images/steam-icon.png" alt="Steam Icon" class="steam-icon">
                Steam으로 로그인
            </button>
        </form>
    </main>
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-left">
            <p>스팀 추천 웹 사이트 제작자</p>
            <p>노현수 20223231</p>
            <p>최동혁 20204373</p>
            <p>황은빈 20224256</p>
            <p>김기호 20224297</p>
        </div>
        <div class="footer-right">
            <p>서포트 - 보러가기</p>
            <p>후원</p>
            <p>쿠키</p>
            <p>오픈소스 : <span class="link-text">www.steam.com</span></p>
            <p>API</p>
        </div>
    </footer>
</body>
</html>
