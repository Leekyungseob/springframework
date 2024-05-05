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
								<div class="card-header">로그인</div>
								<div class=card-body>	
								      <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
								         <div class="alert alert-danger mb-2" role="alert">
								            <c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'Bad credentials'}">
								              	 아이디 또는 비밀번호가 틀립니다.
								            </c:if>
								         </div>
								      </c:if>								
								
								
													
									<form method="post" action="${pageContext.request.contextPath}/login">
										
										<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>	 --%>
																		
										   <div class="form-group mb-2">
										       <label for="mid">Member ID</label>
										       <input type="text" class="form-control" id="mid" name="mid">
										   </div>
										   <div class="form-group mb-2">
										      <label for="mpassword">Member Password</label>
										      <input type="password" class="form-control" id="mpassword" name="mpassword">
										   </div>
										   <button type="submit" class="btn btn-info btn-sm mt-2">로그인</button>
									</form>		            
						            							      						
								</div>
							</div>											
							
						</div>
					</div>
				</div>
			</div>
		
		
	</body>
</html>