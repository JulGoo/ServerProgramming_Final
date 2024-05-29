<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<!-- nav를 별도의 헤더 파일로 저장하여 include 시킴 -->
<%@ include file="header.jsp"%>

</section>
<!-- Main -->
<section id="main">
	<div class="container">
		<!-- Content -->
		<article class="box post">
			<header>
				<h2>${databean.title }</h2>
				<p style="float: right">${databean.userID}   ${databean.cdate }</p>
			</header>
			<br> <br>
			<p>${databean.content }</p>

			<br>

			<!-- 해당 게시글의 작성자일 때 버튼 활성화 -->
			<button
				onclick="location.href='/Final_202244026/update?idx=${databean.idx }'">수정</button>
			<button onclick="confirmDelete()">삭제</button>
			<div style="display: none">
				<form action="/Final_202244026/delete.do" method="post" id="delete">
					<input type="number" value="${databean.category }" name="category">
					<input type="number" value="${databean.idx }" name="idx">
				</form>
			</div>
		</article>
	</div>
</section>

<!-- footer를 별도의 풋터 파일로 저장하여 include 시킴 -->
<%@ include file="footer.jsp"%>