<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>  
<html>
    <head>
     <meta charset="UTF-8">
     <script>
  
		function CheckDelete(obj) {
			
			var Check = confirm("정말 탈퇴 하시겠습니까?");
			
			if(Check) {
				location.href="/client/delete?id="+obj;
			}
			
		}
		
     </script>
     <style type="text/css">
       body {
                background-color: #FBF5EF;
            }
     </style>
    </head>
    <body>
      <c:forEach var="Client" items="${list}" >
        <a href="/client/myinfo" style="margin-left: 80%; margin-top: 100px; font-size: 30px;" >이전으로가기</a>
        <a href="#" style="margin-left: 80%; margin-top: 100px; font-size: 30px;" onclick="CheckDelete('${Client.id}')" >회원 탈퇴</a>
      </c:forEach>
        <table align="center" border="1 solid black" style="font-size: 20px;   width: 1000px; height: 50%; margin-top: 2%; text-align: center;">
          <c:forEach var="Client" items="${list}" >
            <tr>
                <td style="width: 20%;">차가격</td>
                <td>${Client.carprice}</td>
            </tr>

            <tr>
                <td>운전경력</td>
                <td>${Client.driveyear}</td>
            </tr>

            <tr>
                <td>차의 배기량</td>
                <td>${Client.enginedisplacement}</td>
            </tr>

            <tr>
                <td>자신의 암경력</td>
                <td>${Client.cancerhistory}</td>
            </tr>

            <tr>
                <td>자신의 입원병력</td>
                <td>${Client.admissionhistory}</td>
            </tr>

            <tr>
                <td>가족의 암경력</td>
                <td>${Client.familycancercheck}</td>
            </tr>
	</c:forEach>
        </table>
    </body>
</html>