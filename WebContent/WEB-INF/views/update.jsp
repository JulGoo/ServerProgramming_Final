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
			<form method="post" action="/Final_202244026/update.do">
				<input type="hidden" value="${databean.idx }" name="idx"> <input
					type="text" class="form-control" placeholder="제목을 적어주세요."
					name="title" maxlength="30" value="${databean.title }"> <br>
				<textarea id="summernote" class="form-control"
					placeholder="내용을 적어주세요." name="content" maxlength="1024">${databean.content }</textarea>
				<br>
				<button type="submit">수정</button>
			</form>
		</article>
	</div>
</section>

<!-- footer를 별도의 풋터 파일로 저장하여 include 시킴 -->
<%@ include file="footer.jsp"%>