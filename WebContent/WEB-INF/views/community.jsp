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
				<c:choose>
					<c:when test="${category == 0 }">
						<h2>공지사항</h2>
					</c:when>
					<c:when test="${category == 1 }">
						<h2>FAQ</h2>
					</c:when>
					<c:when test="${category == 2 }">
						<h2>자유게시판</h2>
					</c:when>
				</c:choose>
				<p>컴퓨터정보공학과</p>
			</header>

			<button type="button" onclick="location.href='/Final_202244026/write?category=${category}'" style="float:right">작성</button>

			<table class="table table-striped">
				<colgroup>
					<col width="10%;">
					<col width="auto;">
					<col width="15%;">
					<col width="15%;">
					<col width="10%;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="obj" items="${community }">
						<tr>
							<td>${obj.idx }</td>
							<td>${obj.title }</td>
							<td>${obj.userID }</td>
							<td>${obj.cdate }</td>
							<td>${obj.viewC }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>
</section>

<!-- footer를 별도의 풋터 파일로 저장하여 include 시킴 -->
<%@ include file="footer.jsp"%>