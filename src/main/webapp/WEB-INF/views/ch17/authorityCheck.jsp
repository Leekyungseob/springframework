<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
				<!-- Latest compiled and minified CSS -->
<!--부트스트랩 5 외부 라이브러리 설정-->
<link href="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery 외부 라이브러리 설정 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	
	<!-- 사용자 정의 자바스크립트 -->
		<script type="text/javascript">

				
		</script>
	
	</head>
	<body>
			<div class="d-flex flex-column vh-100">
				<%@ include file="/WEB-INF/views/common/header.jsp"%>
		
				<div class=" flex-grow-1  m-2">
					<div class="d-flex row ">
						<div class="col-md-4">
							<%@ include file="/WEB-INF/views/common/menu.jsp"%>
						</div>
						<div class=" col-md-8">
							<div class="card">
								<div class="card-header">권한별 메뉴 보기</div>
								<div class=card-body>	
							
								
									<ul>
									<sec:authorize access="hasRole('ROLE_ADMIN')">
									<li><a href="${pageContext.request.contextPath}/ch17/admin/page">ADMIN 페이지</a></li>
									</sec:authorize>
									
									<sec:authorize access="hasRole('ROLE_MANAGER')">
									<li><a href="${pageContext.request.contextPath}/ch17/manger/page">MANAGER 페이지</a></li>
									</sec:authorize>
									
									<sec:authorize access="hasRole('ROLE_USER')">
									<li><a href="${pageContext.request.contextPath}/ch17/user/page">USER 페이지</a></li>
									</sec:authorize>
       
         
     
       
      </ul>
						            							      						
								</div>
							</div>											
							
						</div>
					</div>
				</div>
			</div>
		
		
	</body>
</html>