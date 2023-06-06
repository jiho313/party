<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	String err = request.getParameter("err");
	String job = request.getParameter("job");
	
	System.out.println(session.getAttribute("loginId"));
	System.out.println(session.getAttribute("auth"));
%>
<!doctype html>
<html lang="ko">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<div class="container">
	<div class="bg-light p-3">
<%
	if ("deny".equals(err)) {
%>
		<div class="alert alert-danger">
			<strong><%=job %></strong>에 대한 요청은 거부되었습니다.
		</div>
<%
	}
%>
		<h1 class="mb-5">파티</h1>

	</div>
</div>
</body>
</html>