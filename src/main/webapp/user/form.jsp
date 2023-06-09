<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	String err = request.getParameter("err");
%>
<!doctype html>
<html lang="ko">
<head>
<title>회원가입</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row mb-3">
    	<div class="col-12">
        	<h1 class="border bg-light fs-4 p-2">회원가입</h1>
      	</div>
   	</div>
   	<div class="row mb-3">
   		<div class="col-12">
   			<p>사용자 정보를 입력하고 등록하세요.</p>
<%
	if ("id".equals(err)) {
%>
		<div class="alert alert-danger">
			<strong>회원가입 실패</strong> 아이디가 이미 사용중입니다.
		</div>
<%
	} else if ("email".equals(err)){
%>
		<div class="alert alert-danger">
			<strong>회원가입 실패</strong> 이메일이 이미 사용중입니다.
		</div>
<%
	}
%>
			<form class="border bg-light p-3" method="post" action="insert.jsp">
				<div class="form-group mb-2 w-75">
   					<div class="form-label">성별</div>
   					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" id="radioM" name="gender"  value="M" checked="checked">
  						<label class="form-check-label" for="radioMale">남자</label>
					</div>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" id="radioF" name="gender" value="F">
  						<label class="form-check-label" for="radioFemale">여자</label>
					</div>
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">아이디</label>
   					<input type="text" class="form-control" name="id" required />
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">비밀번호</label>
   					<input type="password" class="form-control" name="password" required />
   				</div>
   				
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">이름</label>
   					<input type="text" class="form-control" name="name" required />
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">닉네임</label>
   					<input type="text" class="form-control" name="nickName" required />
   				</div>
				<div class="form-group mb-2 w-75">
					<label for="birthdate" class="form-label">생년월일</label> 
					<input type="date" class="form-control" name="birthdate" class="form-control" required />
				</div>
				<div class="form-group mb-2 w-75">
   					<label class="form-label">이메일</label>
   					<input type="email" class="form-control" name="email" />
   				</div>
   				<div class="form-group mb-2 w-75">
					<label class="form-label">전화번호</label>
					<input type="tel" id="phone-number" class="form-control" name="tel" placeholder="예) 000-0000-0000" 
						   pattern="\d{3}-\d{4}-\d{4}" title="000-0000-0000형식으로 입력하세요." />
				</div>   				
   				<div class="text-end w-75">
   					<button type="submit" class="btn btn-primary">회원가입</button>
				</div>
			</form>
   		</div>
	</div>
</div>
</body>
</html>