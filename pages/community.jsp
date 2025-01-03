<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Steam Guide</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/coummnity.css">
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
                    <img src="../images/search-icon.png" alt="Search Icon" class="search-icon">
                </button>
            </div>
        </div>        
        <div class="navbar-right">
            <button class="bookmark" onclick="location.href='../pages/bookmark.jsp'">
                <img src="../images/bookmark.png" alt="bookmark" class="bookmark-img">
            </button>
            <button class="icon">
                <img src="../images/notification-icon.png" alt="Notification Icon" class="icon-img">
            </button>            
            <button class="login-btn">로그인/회원가입</button>
        </div>
    </header>
    
    <nav class="secondary-menu">
        <ul>
            <li><a href="../pages/community.jsp">Coummnity</a></li> 
            <li><a href="../pages/AI_choice.jsp">AI_choice</a></li> 
            <li><a href="../pages/sale.jsp">Sale games</a></li> 
            <li><a href="../pages/library.jsp">Library</a></li>
        </ul>
    </nav>

    <main>

        <section class="community-section">
            <!-- 타이틀 -->
            <div class="community-title">
                <h1>게임 커뮤니티</h1>
                <textarea placeholder="게임에 대한 추천 또는 비추천 의견을 남겨주세요"></textarea>
                <div class="feedback-section">
                    <p>이 게임에 대해 어떻게 생각하세요?</p>
                    <button class="like-button"><img src="../images/like-icon.png" alt="Like"></button>
                    <button class="dislike-button"><img src="../images/dislike-icon.png" alt="Dislike"></button>
                    <button class="submit-button">등록</button>
                </div>
            </div>
        
            <!-- 필터 버튼 -->
            <div class="review-filters">
                <button class="filter-button active">최신순</button>
                <button class="filter-button">추천순</button>
                <button class="filter-button">비추천순</button>
            </div>
            
            <!-- 의견 카드 목록 -->
            <div class="reviews-list">
                <!-- 첫 번째 의견 카드 -->
                <div class="review-card">
                    <div class="review-text">
                        <div class="review-header">
                            <span class="review-title">"정말 최고의 게임이었어요!"</span>
                        </div>
                        <div class="review-content">
                            <p>
                                추천합니다! 그래픽과 게임 플레이가 정말 훌륭합니다. 누구나 한 번쯤 해볼 만한 게임이에요.
                            </p>
                        </div>
                        <div class="review-footer">
                            <span class="review-date">2023.11.26</span>
                            <span class="review-type positive">추천</span>
                        </div>
                    </div>
                    <div class="review-game-image">
                        <img src="../images/game.png" alt="게임 이미지">
                    </div>
                </div>
        
                <!-- 두 번째 의견 카드 -->
                <div class="review-card">
                    <div class="review-text">
                        <div class="review-header">
                            <span class="review-title">"재미는 있지만, 단점도 많아요."</span>
                        </div>
                        <div class="review-content">
                            <p>
                                게임 자체는 재미있지만, 가격이 조금 비싸다고 느껴졌습니다. 적당한 가격에 구매하시는 것을 추천드려요.
                            </p>
                        </div>
                        <div class="review-footer">
                            <span class="review-date">2023.11.25</span>
                            <span class="review-type neutral">보통</span>
                        </div>
                    </div>
                    <div class="review-game-image">
                        <img src="../images/game.png" alt="게임 이미지">
                    </div>
                </div>
        
                <!-- 세 번째 의견 카드 -->
                <div class="review-card">
                    <div class="review-text">
                        <div class="review-header">
                            <span class="review-title">"비추천합니다. 별로였어요."</span>
                        </div>
                        <div class="review-content">
                            <p>
                                그래픽은 좋지만, 게임 플레이가 너무 지루했습니다. 개인적으로는 비추천합니다.
                            </p>
                        </div>
                        <div class="review-footer">
                            <span class="review-date">2023.11.24</span>
                            <span class="review-type negative">비추천</span>
                        </div>
                    </div>
                    <div class="review-game-image">
                        <img src="../images/game.png" alt="게임 이미지">
                    </div>
                </div>
            </div>
        
            <!-- 더보기 버튼 -->
            <div class="community-actions">
                <button class="more-reviews-button">더보기</button>
            </div>
        </section>
        
        
        
    </main>
    </body>


    <div id="footer"></div>

    <style>
        .logo {
            cursor: pointer; /* 클릭 가능한 손 모양 커서를 표시 */
        }
    </style>

    <script>
        // footer.html 파일을 동적으로 로드
        fetch('../pages/footer.jsp')
            .then(response => response.text())
            .then(data => {
                document.getElementById('footer').innerHTML = data;
            });
    
        // 로그인/회원가입 버튼 클릭 시 페이지 이동
        document.addEventListener('DOMContentLoaded', () => {
            const loginButton = document.querySelector('.login-btn');
            if (loginButton) {
                loginButton.addEventListener('click', () => {
                    window.location.href = '../pages/login.jsp'; // 로그인 페이지로 이동
                });
            }
        });
        document.addEventListener('DOMContentLoaded', () => {
            const mainLink = document.querySelector('.logo'); // 텍스트를 감싼 클래스 선택
            if (mainLink) {
                mainLink.addEventListener('click', () => {
                    window.location.href = '../pages/main.jsp'; // 메인 페이지로 이동
                });
            }
        });
    </script>
    
    </com>
