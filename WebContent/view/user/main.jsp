<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KG커피</title>

<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- css 파일 링크 -->
<link rel="stylesheet" type="text/css" href="/kgCoffee/css/header_style.css">
<link rel="stylesheet" type="text/css" href="/kgCoffee/css/main_style.css">

<!-- home_슬라이드쇼 만들기 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>

</head>
<body>
	
		<%@include file="/include/header.jsp" %>
	
	
	<!-- home section start -------------------------------------------------------- -->
	<section class="home" id="home">
	
		<div class="swiper home-slider">
		
			<div class="swiper-wrapper">
			
				<div class="swiper-slide slide" style="background: url('/kgCoffee/img/home-1.jpg')no-repeat;">
					<div class="content">
						<span>다양한 음료를 제공합니다</span>
						<h3>KG COFFEE</h3>
						<a href="#" class="btn">메뉴보기</a>
					</div>
				</div>
				
				<div class="swiper-slide slide" style="background: url('/kgCoffee/img/home-2.jpg')no-repeat;">
					<div class="content">
						<span>다양한 음료를 제공합니다</span>
						<h3>KG COFFEE</h3>
						<a href="#" class="btn">메뉴보기</a>
					</div>
				</div>
				
				<div class="swiper-slide slide" style="background: url('/kgCoffee/img/home-3.jpg')no-repeat;">
					<div class="content">
						<span>다양한 음료를 제공합니다</span>
						<h3>KG COFFEE</h3>
						<a href="#" class="btn">메뉴보기</a>
					</div>
				</div>
				
			</div>
			
			<div class="swiper-button-next"></div>
    		<div class="swiper-button-prev"></div>
			
		</div>
		
	</section> <!-- home section end -->
	
	<!-- about section start -------------------------------------------------------- -->
	<section class="about" id="about">
		
		<div class="image">
			<img src="/kgCoffee/img/cafe-3.jpg">
		</div>
		
		<div class="content">
			<h3 class="title">Welcome To KG COFFEE</h3>
			<p>전국 어디에서나 <br>
			   합리적인 가격의 다양한 음료를 제공합니다</p>
			<a href="#" class="btn">매장찾기</a>
		</div>
		
	</section> <!-- about section end -->
	
	
	<%@include file="/include/footer.jsp" %>
	
	<!-- home_슬라이드쇼 -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	
	<!-- 자바스크립트 file link -->
	<script src="/kgCoffee/js/main_script.js"></script>
	
	<script>
		
		console.log('${msg}');
		const msg = '${msg}';
		
		if (msg === 'reg-success') {
		    alert('${user.user_name}'+'님 로그인 되었습니다.');
		} else if (msg === 'reg-failed') {
			alert('아이디 또는 비밀번호를 잘못입력하셨습니다. 다시 입력해주세요.');
			history.back();
		}
		
		if (msg === 'logout') {
			alert('로그아웃 되었습니다.');
		}
	
	</script>
	
	
</body>
</html>