<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<!-- nav를 별도의 헤더 파일로 저장하여 include 시킴 -->
<%@ include file="header.jsp"%>
</section>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f506ad32b320776e200ac89edb6079ff"></script>


<!-- Main -->
<section id="main">
	<div class="container">

		<!-- Content -->
		<article class="box post">
			<header>
				<h2>오시는길</h2>
				<p>인하공업전문대학 컴퓨터정보공학과</p>
			</header>


			<div id="map" style="width: auto; height: 400px;"></div>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(37.44913, 126.6572),
					level : 3
				};

				var map = new kakao.maps.Map(container, options);

				// 마커가 표시될 위치입니다 
				var markerPosition = new kakao.maps.LatLng(37.44913, 126.6572);

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					position : markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);

				// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
				var iwContent = '<div style="padding:5px;">7호관 407A호</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

				// 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
					content : iwContent,
					removable : iwRemoveable
				});

				// 마커에 클릭이벤트를 등록합니다
				kakao.maps.event.addListener(marker, 'click', function() {
					// 마커 위에 인포윈도우를 표시합니다
					infowindow.open(map, marker);
				});
			</script>


			<header>
				<h3>인천광역시 미추홀구 인하로 100 인하공업전문대학 컴퓨터정보과 7호관 407A호 (☏
					032-870-2320, 2321)</h3>
			</header>

			<hr>

			<section>
				<header>
					<h3>대중교통 이용안내</h3>
				</header>
				<table>
					<tr>
						<td>광역버스</td>
						<td>1601(서울역), 9200(강남역), 3001(광명역)</td>
					</tr>
					<tr>
						<td>시내버스</td>
						<td>5, 5-1, 8, 9, 13, 27, 46, 111-2 나머지 버스노선은 현행 그대로 유지</td>
					</tr>
					<tr>
						<td>마을버스</td>
						<td>511 / 515 / 516 / 518(주안역), 512(제물포역), 517 / 519(동인천역)</td>
					</tr>
					<tr>
						<td>급행간선</td>
						<td>908(송도신도시공영차고지)</td>
					</tr>
				</table>
			</section>

			<section>
				<header>
					<h3>승용차(고속도로) 이용안내</h3>
				</header>
			</section>
			<div>
				<img src="images/road.png" alt="" style="width:auto"/></div>
		</article>

	</div>
</section>

<!-- footer를 별도의 풋터 파일로 저장하여 include 시킴 -->
<%@ include file="footer.jsp"%>