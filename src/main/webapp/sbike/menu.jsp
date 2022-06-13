<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	  <div class="top fixed-top">
      <section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-end">
          <div class="join-login">
            <a href="join.jsp" class="join"><span>회원가입</span></a>
            <%if(session.getAttribute("id")==null){ %>
            <a href="login.jsp" class="login"><span>로그인</span></a>
            <%}else{ %>
            <span><%=session.getAttribute("name") %>님 반갑습니다</span>
            <a href="logout.do" class="logout"><span>로그아웃</span></a>
            <%} %>
          </div>
          <div class="social-links">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          </div>
        </div>
      </section>
    <!-- =========메뉴=========== -->
      <header id="header" class="d-flex align-items-center">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">
    
          <div class="logo me-auto me-lg-0"><a href="index.jsp"><img src="../source/img/logo.png" alt=""></a></div>
    
          <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
              <li class="dropdown"><a href="#"><span>로드자전거</span> </a>
                <ul>
                  <li class="dropdown"><a href="#"><span>에어로</span> </a>
                    <ul>
                      <li><a href="trek.jsp">트렉</a></li>
                      <li><a href="#">피나렐로</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">비앙키</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a href="#"><span>올라운드</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">피나렐로</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">비앙키</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a href="#"><span>엔듀런스</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">피나렐로</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">비앙키</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a href="#"><span>하이브리드</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">피나렐로</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">비앙키</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>MTB</span> </a>
                <ul>
                  <li class="dropdown"><a href="#"><span>XC</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">스페셜라이즈드</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">캐논데일</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a href="#"><span>올마운틴</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">스페셜라이즈드</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">캐논데일</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a href="#"><span>트레일</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">스페셜라이즈드</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">캐논데일</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a href="#"><span>다운힐</span> </a>
                    <ul>
                      <li><a href="#">트렉</a></li>
                      <li><a href="#">스페셜라이즈드</a></li>
                      <li><a href="#">자이언트</a></li>
                      <li><a href="#">메리다</a></li>
                      <li><a href="#">캐논데일</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>미니벨로</span> </a>
                <ul>
                  <li><a href="#">브롬톤</a></li>
                  <li><a href="#">다혼</a></li>
                  <li><a href="#">턴</a></li>
                  <li><a href="#">버디</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>의류 및 악세서리</span> </a>
                <ul>
                  <li><a href="#">라파</a></li>
                  <li><a href="#">아소스</a></li>
                  <li><a href="#">카스텔리</a></li>
                  <li><a href="#">아덴</a></li>
                </ul>
              </li>
              <li><a class="review" href="reviewboard.do">고객후기</a></li>
              <li><a class="customer-support" href="#">고객지원</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
          </nav>
          <div class="search-bar">
            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="브랜드 및 모델명" aria-label="Search">
              <button class="btn btn-outline-success flex-shrink-0" type="submit">검색</button>
            </form>
          </div>  
        </div>
      </header>
    </div>

</body>
</html>