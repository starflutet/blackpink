<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/resources/layout/header.jsp">
	<jsp:param name = "title" value = "메인화면" />
</jsp:include>
	<!-- content -->
	<div class="container pt-3">
		<div class="row">
			<!-- left content -->
			<div class="col-sm-4">
				<h2>About Black Pink</h2>
				<p>JYP엔터테인먼트 소속의 4인조 걸그룹!</p>
				<img src="/blackpink/resources/img/banner1.jpg" class="img-fluid rounded">
				<p>지수, 조이, 제니, 리사로 구성된 4인조로 데뷔했고, 2016년 8월 8일 데뷔함!</p>
				<hr>
				<!-- side menu (link) -->
				<h3>사이드 메뉴</h3>
				<p>이웃 홈페이지를 통해 레드벨벳 소식을 즐겨보세요!</p>
				<ul class="list-group">
					<li class="list-group-item list-group-item-action"><a href="#">공식카페</a></li>
					<li class="list-group-item list-group-item-action"><a href="#">블랙핑크가좋아</a></li>
					<li class="list-group-item list-group-item-action"><a href="#">Youtube 블랙핑크</a></li>
				</ul>
				<hr>
				<h3>오늘의 사진</h3>
				<img src="/blackpink/resources/img/banner2.jpg" class="img-fluid rounded p-3">
				<img src="/blackpink/resources/img/banner4.jpg" class="img-fluid rounded p-3">
			</div>
			<!-- right content -->
			<div class="col-sm-8">
				<h3><p>2020년 6월 26일, 발표!</p></h3>
				<div class="container">
				<h2>Black Pink 'How You Like That'</h2>
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item"
							src="https://www.youtube.com/embed/ioNng23DkIM" frameborder="0"	allowfullscreen>
						</iframe>
					</div>
				</div>
				<hr>
				<!-- side menu (link) -->
				<h3>오늘의 소식!</h3>
				<p>블랙핑크의 'How You Like That'이 인기 고공행진 중이다.</p>
				<p>5월 29일 발매된 레이디 가가의 새로운 앨범 CHROMATICA의 SOUR CANDY 라는 곡을 함께
					작업하였다. 블랙핑크와 함께한 SOUR CANDY는 국내 걸그룹이 이룬 빌보드 최고 순위로 빌보드 33위에 진입하였고,
					국내 걸그룹 최초로 영국 오피셜 차트에 17위에 진입하였다.</p>
				<div id="carouselExampleFade" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100 "
								src="/blackpink/resources/img/banner5.png/?auto=yes&bg=777&fg=555&text=First slide"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="/blackpink/resources/img/banner7.jpg/?auto=yes&bg=666&fg=444&text=Second slide"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="/blackpink/resources/img/banner8.jpg/?auto=yes&bg=555&fg=333&text=Third slide"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleFade"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleFade"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<p>올해 첫 정규 앨범 발매를 앞두고 있으며 그 전에 두개의 선공개 싱글 앨범을 발매 한다. 2020년 6월
					26일 1년 2개월만에 첫번째 선공개곡 'How You Like That' 이라는 곡으로 국내 컴백하였다. 블랙핑크는
					26일(미국 현지 시간)미국 NBC 'The Tonight Show Starring Jimmy Fallon(더 투나잇 쇼
					스타링 지미 팰런)'에 화상으로 출연해 이날 발매한 'How You Like That'무대를 처음으로 공개했다.
					블랙핑크의 How You Like That 뮤직비디오는 지난 26일 오후 6시 공개된지 32시간 만에 1억뷰를
					돌파하였다. 지금까지 유튜브에 게시된 뮤직비디오 중 최단 시간 1억뷰,2억뷰를 달성하였다. 블랙핑크의 신곡 'How
					You Like That'이 세계 최대 음원 스트리밍 서비스인 스포티파이 차트서 K팝 최고 순위인 2위를 기록했다. 또
					K-POP 걸그룹 최초로 빌보드 33위에 진입했다.</p>
				<p>두번째 선공개곡이자 특별한 형태의 곡은 셀레나 고메즈와 전격 콜라보로 8월달에 컴백 예정이다. 2020년
					10월 2일 데뷔 후 첫 정규앨범으로 컴백을 앞두고 있다. 하반기에는 로제, 리사, 지수 순으로 솔로 앨범을 발매할
					예정이다.</p>
			</div>
		</div>
	</div>
<jsp:include page="/resources/layout/footer.jsp"/>