<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<style>

  p{
    margin-left: 15%;
    font-size: 30px;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
  }
</style>

<script>

function explanation(obj){
	
	alert(obj);
	
}

</script>
</head>
<body>
  <p style="margin-top: 50px;">보험 리스트</p>
  <table border="1"  align="center"  width="80%" style="margin-top: 50px;">
    <tr align="center"   bgcolor="lightgreen">
      <td ><b>보험 식별 번호</b></td>
      <td><b>보험이름</b></td>
      <td><b>보험료(만원)</b></td>
      <td><b>보험설명</b></td>
      <td colspan="3"></td>
   </tr>
   
 <c:forEach var="InsuranceList" items="${insuranceList}" >     
   <tr align="center">
      <td>${InsuranceList.insuranceId}</td>
      <td>${InsuranceList.insuranceName}</td>
      <td>${InsuranceList.insurancePee}</td>
      <td><a href ="#" onclick="explanation('${InsuranceList.insuranceExplanation}')">보험설명보기</a></td>
      <td><a href="/insurance/InsuranceRate?id=${InsuranceList.insuranceId}">요율확인하기</a></td>
        <td><a href="/insurance/deleteinsurance?id=${InsuranceList.insuranceId}">삭제하기</a></td>
    </tr>
  </c:forEach>   
</table>

<a  href="/insurance/back"><h1 style="text-align:center">이전으로</h1></a>
</body>
</html>
