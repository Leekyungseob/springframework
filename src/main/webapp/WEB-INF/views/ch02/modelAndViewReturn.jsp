<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
				<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery 외부 라이브러리 설정 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	
	<!-- 사용자 정의 자바스크립트 -->
		<script>
			
				
				
		</script>
	
	</head>
	<body>
			<div class="d-flex flex-column vh-100">
				<%@ include file="/WEB-INF/views/common/header.jsp" %>
				<div class="flex-grow-1  m-2">
					<div class="d-flex row ">
						<div class="col-md-4">
							<%@ include file="/WEB-INF/views/common/menu.jsp" %>
						</div>
						
						<div class="col-md-8">
						
							<div class="card">
								<div class="card-header">ModelAndView 타입 리턴</div>
								<div class="card-body">
								<p>장번호:${chNum}</p>
								<p>로그인:${login}</p>
								<p>사용자:${userName}</p>
									
									
								
									
								</div>
							</div>
							
						</div>
						
					</div>
				</div>
			</div>	
	</body>
</html>