<%--page 지시자: WAS에서 JSP 해석하는 방법을 기술 --%>
<%@ page  contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!--부트스트랩 5 외부 라이브러리 설정-->
<link href="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery 외부라이브러리 설정 -->
<script
   src="${pageContext.request.contextPath}/resources/jquery/jquery-3.7.1.min.js"></script>



</head>
<body>
   <div class="d-flex flex-column vh-100">
   <!-- 	@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
   		 <%-- include 지시자는 소스 복사 개념 --%>
       <%@ include file="/WEB-INF/views/common/header.jsp"%> 

      <div class=" flex-grow-1  m-2">
         <div class="d-flex row ">
            <div class="col-md-4">
               <%@ include file="/WEB-INF/views/common/menu.jsp"%>
              <%--include 액션은 외부에서 실행하고 결과만 삽입 --%>
               <%--  <jsp:include page="/WEB-INF/views/common/menu.jsp"/>  --%>
            </div>
            <div class=" col-md-8">
            <!-- ############################## -->
               <div class="card">
                  <div class="card-header">home</div>
                  <div class=card-body>
                  content
                  </div>
                  
               </div>
            </div>
         </div>
      </div>
   </div>

</body>
</html>