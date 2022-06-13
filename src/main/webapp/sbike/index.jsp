<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr" >
<head>

<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="../source/img/favicon.png" rel="icon">

<title>SAM'S BIKE</title>
<meta content="" name="description">
<meta content="" name="keywords">

<link href="../source/img/favicon.png" rel="icon">
<link href="../source/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="../source/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../source/bootstrap/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="../source/css/style.css" rel="stylesheet">
</head>
<body>

<%@ include file="menu.jsp"  %>
  
  <!-- ================중앙 슬라이드================ -->
  <div id="carousel">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="7000">
            <img src="../source/img/slide/slide-1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h4>로드 자전거</h4>
              <h5>자전거의 F1머신</h5>
              <p>얇은 타이어와 밑쪽으로 구부러진 핸들이 특징인 로드 바이크. 스포츠 바이크 중에서도 특히 고속 주행 성능을 추구하여 설계.</br>
                자전거 레이스는 물론 출퇴근에도 적합합니다. 바람과 일체가 되서 주행하는 질주감은 로드 바이크 최대의 매력이고 특징입니다.</p>
              <button type="button" class="btn btn-secondary"style="background-color: #17192c;">더 알아보기</button>
            </div>
          </div>
          <div class="carousel-item" data-bs-interval="7000" >
            <img src="../source/img/slide/slide-2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h4>MTB</h4>
              <h5>길을 가리지 않는 강한 자전거</h5>
              <p>그 이름과 같이 산악 지대 등 노면 상태가 나쁜 길에서 탈 수 있도록 설계된 자전거이며, 압도적인 주파성을 발휘합니다.</br> 
                타이어가 굵어서 노면 저항이 크고, 포장 도로에서는 속도가 그다지 나지 않지만 턱 등을 신경 쓰지 않고 탈 수 있어서</br> 도시 길거리에서도 믿음직한 자전거입니다.</p>
              <button type="button" class="btn btn-secondary"style="background-color: #17192c;">더 알아보기</button>
            </div>
          </div>
          <div class="carousel-item" data-bs-interval="7000">
            <img src="../source/img/slide/slide-3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block" >
              <h4>미니벨로</h4>
              <h5>라이프 스타일에 맞추어 즐기는 자전거</h5>
              <p>20 인치 정도 크기의 타이어를 장착한 소형 자전거입니다. 출발할 때 가볍고 빈번한 정차에 적합해 도시 생활에 적합합니다.</br> 
                디자인의 자유도가 높고 접이식이라 수납성도 좋습니다. 라이프 스타일에 맞춘 커스터마이즈가 가능하며 큰 턱이 있는 길이나</br> 험한 길은 적합하지 않습니다.</p>
              <button type="button" class="btn btn-secondary" style="background-color: #17192c;">더 알아보기</button>
            </div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">이전</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">다음</span>
      </button>
    </div>
  </div>
  <!-- =================브랜드 슬라이드=============== -->
  <section id="bike" class="bike">
    <div class="container">

      <div class="brand-title">
        <h2>Bike Brands</h2>
      </div>

      <div class="bike-slider swiper">
        <div class="swiper-wrapper align-items-center">
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_1.png"  class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_2.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_3.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_4.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_5.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_6.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/b-logo_7.png" class="img-fluid" alt=""></a></div>
        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>
  </section>

  <section id="clothes" class="clothes">
    <div class="container">

      <div class="brand-title">
        <h2>Clothes Brands</h2>
      </div>

      <div class="clothes-slider swiper">
        <div class="swiper-wrapper align-items-center">
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_1.png"  class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_2.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_3.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_4.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_5.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_6.png" class="img-fluid" alt=""></a></div>
          <div class="swiper-slide"><a href="#"><img src="../source/img/brands/c-logo_7.jpg" class="img-fluid" alt=""></a></div>
        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>
  </section>
  <!-- ===========이달의 상품============== -->
  <section id="bestbike" class="bestbike">
    <div class="container">
      <div class="section-title">
        <h2></br>이달의 상품</h2>
      </div>

      <div class="bestbike-slider swiper">
        <div class="swiper-wrapper">

          <div class="swiper-slide">
            <div class="row bestbike-item">
              <div class="col-lg-6">
                <img src="../source/img/ex/madone.png" class="img-fluid" alt="">
              </div>
              <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>트렉 마돈 SLR9 eTap</h3>
                <div class="price">
                  <p><span>₩14,800,000</span></p>
                </div>
                <p>
                  마돈 SLR 9 디스크는 궁극의 에어로다이나믹 슈퍼바이크입니다. 완전히 새로워진 초경량 800 시리즈 OCLV 카본 프레임, 조절형 컴플라이언스, 그리고 시마노 듀라-에이스 Di2 전자식 구동계로 믿을 수 없을 정도로 빠른 최상급 라인업의 에어로다이나믹 로드 자전거를 향한 여정의 종지부를 찍게 됩니다.
                </p>
                <button type="button" class="btn btn-secondary" style="background-color: #17192c;">구매하러 가기</button>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="row bestbike-item">
              <div class="col-lg-6">
                <img src="../source/img/ex/dogma.png" class="img-fluid" alt="">
              </div>
              <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>피나렐로 도그마 f12</h3>
                <div class="price">
                  <p><span>₩13,520,000</span></p>
                </div>
                <p>
                  도그마 시리즈의 개발 컨셉은 바로 올라운드 우승 머신.  강성, 에어로, 경량의 복합적인 최상급 자전거를 개발해 단 한대로 모든 타입의 레이스에서 우승을 차지하는 것입니다.  도그마의 F 시리즈는 발표 이후 개발 컨셉에 맞게 산악, 스프린트, 브레이크어웨이, 독주 등 다양한 레이스에서 우승을 차지했으며 경쟁사들의 하이엔드 바이크들이 점점 올라운드와 에어로 컨셉의 경계가 모호해지는 현상을 보며 피나렐로의 철학이 증명된다고 할 수 있습니다.
                </p>
                <button type="button" class="btn btn-secondary" style="background-color: #17192c;">구매하러 가기</button>
              </div>
            </div>
          </div>

          <div class="swiper-slide">
            <div class="row bestbike-item">
              <div class="col-lg-6">
                <img src="../source/img/ex/tcr.png" class="img-fluid" alt="">
              </div>
              <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>2022 자이언트 TCR pro</h3>
                <div class="price">
                  <p><span>₩5,520,000</span></p>
                </div>
                <p>
                  최신 TCR은 에어로 퍼포먼스에서 큰 발전을 이루었습니다.이는 이전 세대에 비해 향상된 성능을 가장 확실하게 경험할 수 있는 부분입니다. 
                  GIANT는 모든 튜브 형상을 분석, 설계 및 테스트하여 다양한 각도에서 공기 저항을 감소시킬 수 있도록 전체적인 형상을 설계했습니다.
                </p>
                <button type="button" class="btn btn-secondary" style="background-color: #17192c;">구매하러 가기</button>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </section>

  <!-- /*=================의류=============== */ -->

  <section id="bestclothes" class="bestclothes">
    <div class="container">

      <div class="row">
        <div class="col-lg-4 d-flex ">
          <div class="card">
            <img src="../source/img/ex/rapha.jpg" class="card-img-top" alt="...">

            <div class="card-body">
              <h5 class="card-title"><a href="">라파 클래식 져지</a></h5>
              <p class="card-text">라파 대표 져지의 새로운 진화. 더 가볍고 부드러우며 통기성이 높아진 클래식 져지 II를 소개합니다. 최고급 원단을 사용하여 더운날에도 쾌적한 라이딩이 가능합니다. </p>
              <button type="button" class="btn btn-secondary" style="background-color: #17192c;">구매하러 가기</button>
            </div>
          </div>
        </div>
        <div class="col-lg-4 d-flex">
          <div class="card">
            <img src="../source/img/ex/arden1.jpg" class="card-img-top" alt="...">

            <div class="card-body">
              <h5 class="card-title"><a href="">아덴 프라임 래글런 져지</a></h5>
              <p class="card-text">땀 배출과 몸의 과도한 열을 분산할 수 있도록 다양한 조직의 매쉬 원단을 사용하였고,
                편안한 착용감을 위하여 얇고 적당한 텐션의 허리 밴드를 사용하였습니다 </p>
                <button type="button" class="btn btn-secondary" style="background-color: #17192c;">구매하러 가기</button>
            </div>
          </div>
        </div>
        <div class="col-lg-4 d-flex">
          <div class="card">
            <img src="../source/img/ex/arden2.jpg" class="card-img-top" alt="...">

            <div class="card-body">
              <h5 class="card-title"><a href="">얼바인 여성 베로우스 반팔 져지탑</a></h5>
              <p class="card-text">파스텔톤으로 산뜻한 느낌을 주는 져지탑 입니다. 경량성과 냉감기능을 갖춘 이탈리아 프리미엄 원단을 사용하여 매우 가볍고 시원하면 더운날 땀에 젖어도 무거워 지지 않습니다. </p>
              <button type="button" class="btn btn-secondary" style="background-color: #17192c;">구매하러 가기</button>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- =============Footer=========== -->

  <section id="customer" class="customer">
    <div class="container">

      <div class="row">
        <div class="col-lg-9 text-center text-lg-start">
          <h3>고객지원</h3>
          <p>SAM'S BIKE 에 방문해주셔서 진심으로 감사드립니다.</br> 제품에 대하 문의하실 사항이나 배송관련 문의가 있으시다면 고객지원 게시판에 내용을 작성해주시면 신속히 답변드리겠습니다.  </p>
        </div>
        <div class="col-lg-3 cta-btn-container text-center">
          <a class="cta-btn align-middle" href="#">문의하기</a>
        </div>
      </div>

    </div>
  </section>

<%@ include file="footer.jsp"  %>

  <script src="../source/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../source/swiper/swiper-bundle.min.js"></script>
  <script src="../source/css/main.js"></script>
</body>
</html>