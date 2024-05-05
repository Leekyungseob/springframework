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
								<div class="card-header">회원 가입</div>
								<div class=card-body>	
								    
													
									<form method="post" action="join">
										
										<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>	 --%>
																		
										   <div class="form-group mb-2">
										       <label for="mid">Member ID</label>
										       <input type="text" class="form-control" id="mid" name="mid">
										   </div>
										   <div class="form-group mb-2">
										      <label for="mname">Member Name</label>
										      <input type="text" class="form-control" id="mname" name="mname">
										   </div>
										    <div class="form-group mb-2">
										      <label for="mpassword">Member Password</label>
										      <input type="password" class="form-control" id="mpassword" name="mpassword">
										   </div>
										   <div class="form-group mb-2">
										      <label for="memail">Member Email</label>
										      <input type="email" class="form-control" id="memail" name="memail">
										   </div>
									         <div class="form-group mb-2">
									            <label for="mrole">Member Role</label>
									            <select class="form-control" id="mrole" name="mrole">
									               <option value="ROLE_ADMIN">Admin</option>
									               <option value="ROLE_MANAGER">Manager</option>
									               <option value="ROLE_USER" selected>User</option>
									            </select>
									         </div>										   
										   <button type="submit" class="btn btn-info btn-sm mt-2">회원 가입</button>
									</form>		            
						            							      						
								</div>
							</div>											
							
						</div>
					</div>
				</div>
			</div>
		
		
	</body>
</html>