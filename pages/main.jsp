<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <li><a href="../pages/community.jsp">Community</a></li> 
            <li><a href="../pages/AI_choice.jsp">AI_choice</a></li> 
            <li><a href="../pages/sale.jsp">Sale games</a></li> 
            <li><a href="../pages/library.jsp">Library</a></li>
        </ul>
    </nav>

    <main>
        <!-- Featured Game Section -->
        <section class="featured-game">
            <a href="details.html">
            <img src="../images/game.png" alt="Beyond: Two Souls" class="game-image">
            </a>
        </section>
        
        <section class="game-description">
            
            <h2>Beyond: Two Souls</h2>
            <p>
                이번 AI가 10월의 Best game으로 뽑았습니다! <br>
                Beyond: Two Souls는 주변 동료들과 함께하며 좀비 세계에서<br>
                이 세계를 탈출하는 게임으로 스릴러, 퍼즐, 협동을 총망라한...
            </p>
            <div class="featured-price-container">
                <div class="price-top">
                    <span class="featured-original-price">$19,000원</span>
                </div>
                <div class="price-bottom">
                    <span class="featured-discount-box">-60%</span>
                    <span class="featured-discount-price">$7,000원</span>
                </div>
                <button class="featured-game-bookmark">
                    <img src="../images/bookmark.png" alt="Bookmark" class="featured-game-bookmark-img">
                </button>
            </div>
            
        </section>
        

        <!-- Categories Section -->
        <section class="categories">
            <h2>그 외 10월의 Best Game</h2>
            <div class="category-row">
                <div class="game-card">
                    <img src="../images/game.png" alt="The Last of Us Part 1" class="game-image">
                    <div class="game-info">
                        <p class="game-title">The Last of Us Part 1</p>
                        <p>
                            게임설명입니다
                        </p>
                        <div class="price-container">
                            <span class="original-price">$19,000원</span>
                            <span class="discount-box">-25%</span>
                            <span class="discount-price">$14,250원</span>
                        </div>
                    </div>
                </div>
                <div class="game-card">
                    <img src="../images/game.png" alt="ARATUS" class="game-image">
                    <div class="game-info">
                        <p class="game-title">ARATUS</p>
                        <p>
                            게임설명입니다
                        </p>
                        <div class="price-container">
                            <span class="original-price">$15,000원</span>
                            <span class="discount-box">-30%</span>
                            <span class="discount-price">$10,500원</span>
                        </div>
                    </div>
                </div>
                <div class="game-card">
                    <img src="../images/game.png" alt="Hades" class="game-image">
                    <div class="game-info">
                        <p class="game-title">Hades</p>
                        <p>
                            게임설명입니다
                        </p>
                        <div class="price-container">
                            <span class="original-price">$10,000원</span>
                            <span class="discount-box">-50%</span>
                            <span class="discount-price">$5,000원</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="genre-selection">
            <h2>장르 선택</h2>
            <div class="genre-row">
                <div class="genre-card">
                    <img src="../images/game.png" alt="Action Genre" class="genre-image">
                    <p class="genre-title">Action</p>
                </div>
                <div class="genre-card">
                    <img src="../images/game.png" alt="Healing Genre" class="genre-image">
                    <p class="genre-title">Healing</p>
                </div>
                <div class="genre-card">
                    <img src="../images/game.png" alt="Together Genre" class="genre-image">
                    <p class="genre-title">Together</p>
                </div>
                <div class="genre-card">
                    <img src="../images/game.png" alt="Horror Genre" class="genre-image">
                    <p class="genre-title">Horror</p>
                </div>
                <div class="genre-card">
                    <img src="../images/game.png" alt="Single Genre" class="genre-image">
                    <p class="genre-title">Single</p>
                </div>
            </div>
        </section>

        <!-- New Games Section -->
        <section class="categories">
            <h2>new 인기 신작</h2>
            <div class="category-row">
                <div class="game-card">
                    <img src="../images/game.png" alt="The Last of Us Part 1" class="game-image">
                    <div class="game-info">
                        <p class="game-title">The Last of Us Part 1</p>
                        <p>
                            게임설명입니다
                        </p>
                        <div class="price-container">
                            <span class="original-price">$19,000원</span>
                            <span class="discount-box">-25%</span>
                            <span class="discount-price">$14,250원</span>
                        </div>
                    </div>
                </div>
                <div class="game-card">
                    <img src="../images/game.png" alt="ARATUS" class="game-image">
                    <div class="game-info">
                        <p class="game-title">ARATUS</p>
                        <p>
                            게임설명입니다
                        </p>
                        <div class="price-container">
                            <span class="original-price">$15,000원</span>
                            <span class="discount-box">-30%</span>
                            <span class="discount-price">$10,500원</span>
                        </div>
                    </div>
                </div>
                <div class="game-card">
                    <img src="../images/game.png" alt="Hades" class="game-image">
                    <div class="game-info">
                        <p class="game-title">Hades</p>
                        <p>
                            게임설명입니다
                        </p>
                        <div class="price-container">
                            <span class="original-price">$10,000원</span>
                            <span class="discount-box">-50%</span>
                            <span class="discount-price">$5,000원</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Free Games Section -->
<!-- Free Games Section -->
<section class="free-games">
    <h2>무료 Game</h2>
    <div class="free-game-row">
        <div class="free-game-card">
            <img src="../images/game.png" alt="Baldur's Gate" class="free-game-image">
            <div class="free-game-info">
                <p class="free-game-title">Baldur's Gate</p>
                <p>혁명이 되어가는 게임! 이 게임을 해보고 싶다면 어떻게 해야하죠? 어떤 설명을 남아야 하죠?</p>
                <span class="free-game-price">무료</span>
            </div>
        </div>
        <div class="free-game-card">
            <img src="../images/game.png" alt="Rust" class="free-game-image">
            <div class="free-game-info">
                <p class="free-game-title">Rust</p>
                <p>혁명이 되어가는 게임! 이 게임을 해보고 싶다면 어떻게 해야하죠? 어떤 설명을 남아야 하죠?</p>
                <span class="free-game-price">무료</span>
            </div>
        </div>
        <div class="free-game-card">
            <img src="../images/game.png" alt="Call of Duty" class="free-game-image">
            <div class="free-game-info">
                <p class="free-game-title">Call of Duty®</p>
                <p>혁명이 되어가는 게임! 이 게임을 해보고 싶다면 어떻게 해야하죠? 어떤 설명을 남아야 하죠?</p>
                <span class="free-game-price">무료</span>
            </div>
        </div>
        <div class="free-game-card">
            <img src="../images/game.png" alt="Fallout 76" class="free-game-image">
            <div class="free-game-info">
                <p class="free-game-title">Fallout 76</p>
                <p>혁명이 되어가는 게임! 이 게임을 해보고 싶다면 어떻게 해야하죠? 어떤 설명을 남아야 하죠?</p>
                <span class="free-game-price">무료</span>
            </div>
        </div>
        <div class="free-game-card">
            <img src="../images/game.png" alt="Metal Gear" class="free-game-image">
            <div class="free-game-info">
                <p class="free-game-title">Metal Gear</p>
                <p>혁명이 되어가는 게임! 이 게임을 해보고 싶다면 어떻게 해야하죠? 어떤 설명을 남아야 하죠?</p>
                <span class="free-game-price">무료</span>
            </div>
        </div>
        <div class="free-game-card">
            <img src="../images/game.png" alt="Red Dead Redemption 2" class="free-game-image">
            <div class="free-game-info">
                <p class="free-game-title">Red Dead Redemption 2</p>
                <p>혁명이 되어가는 게임! 이 게임을 해보고 싶다면 어떻게 해야하죠? 어떤 설명을 남아야 하죠?</p>
                <span class="free-game-price">무료</span>
            </div>
        </div>
    </div>
    <button class="free-game-more-btn">더보기</button>
</section>

<!-- Steam Guide YouTube Section -->
<section class="steam-guide-youtube">
    <h2>Steam 가이드 Youtube</h2>
    <div class="youtube-row">
        <div class="youtube-card">
            <a href="https://www.youtube.com/watch?v=Asb40dQGi-0" target="_blank">
                <img src="https://img.youtube.com/vi/Asb40dQGi-0/hqdefault.jpg" alt="What is Steam?" class="youtube-thumbnail">
                <div class="play-button"></div>
            </a>
            <p class="youtube-title">What is Steam?</p>
        </div>
        <div class="youtube-card">
            <a href="https://www.youtube.com/watch?v=HCCVLZhwhvA" target="_blank">
                <img src="https://img.youtube.com/vi/HCCVLZhwhvA/hqdefault.jpg" class="youtube-thumbnail">
                <div class="play-button"></div>
            </a>
            <p class="youtube-title">Level 99 Explained</p>
        </div>
        <div class="youtube-card">
            <a href="https://www.youtube.com/watch?v=ZDC_xL3lffk" target="_blank">
                <img src="https://img.youtube.com/vi/ZDC_xL3lffk/hqdefault.jpg" alt="Steam Deck Guide" class="youtube-thumbnail">
                <div class="play-button"></div>
            </a>
            <p class="youtube-title">You Need This - Steam Deck</p>
        </div>
        <div class="youtube-card">
            <a href="https://www.youtube.com/watch?v=PoNOcj-_db8&t=414s" target="_blank">
                <img src="https://img.youtube.com/vi/PoNOcj-_db8/hqdefault.jpg" alt="Steam on Chromebook" class="youtube-thumbnail">
                <div class="play-button"></div>
            </a>
            <p class="youtube-title">Steam on Chromebook</p>
        </div>
    </div>
</section>

        

    <!-- Footer (Dynamic Load) -->
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
</html>
