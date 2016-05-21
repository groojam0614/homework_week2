<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/css/main.css"/>
</head>
<body>

<div class="main">
	<div class="border-box">
		<div class="contents-table"><!-- ContentsTable Start -->
			<table cellspacing="0" class="request-list info-type02 list-titlelong ">

				<colgroup>
					<col style="width:10%">
					<col style="width:*%">
					<col style="width:15%">
					<col style="width:15%">
				</colgroup>
				<thead>
				<tr>
					<th scope="col" class="first"></th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">삭제비밀번호</th>
					<th scope="col">삭제</th>
				</tr>
				</thead>
				<tbody>
				<form method="delete" id="indexForm" traget="" onsubmit="">
				<c:forEach items="${cnuPostList}" var="cnuPost">
					<tr>
						<td>${cnuPost.postId}</td>
						<td class="tleft">
							<a href="#">${cnuPost.title}</a>
						</td>
						<td>${cnuPost.author}</td>
						<td>실전코딩 21조</td>
						<td>
							<input type="password" name="password" id="password_delete" class="itx n_p">
						</td>
						<td>
							<button onclick="removeThis()"> 게시물 삭제 </button>
						</td>
					</tr>
				</c:forEach>
				</form>
				</tbody>
			</table>
		</div><!-- ContentsTable End -->
		<div style="padding-top: 25px;">
			<a href="#" class="btn btn-primary right">글쓰기</a>
		</div>
	</div>
</div>

</body>
</body>
<script type="text/javascript">

	function removeThis(){
		document.getElementById("indexForm").submit();
		return false;
	}
	
</script>
</html>