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
        <style>
             table{
            width: 1400px;
            height: 80px;
            font-size: 20px;
        }
        
         body {
        background-color: #FBF5EF;
        }
       
        </style>

        <script>
        
            

        function DeleteContract(clientId , insuranceId) {

            var Check = confirm("정말로 해지 하시겠습니까?");
            
            console.log(clientId);
            console.log(insuranceId);
			
			if(Check) {
				
				location.href="/employee/clientdeletecontractOK?insuranceId="+insuranceId+"&clientId="+clientId;
			}
			
        }


</script>
    </head>
    <body>

        <section style="margin-top: 50px;">
            <article>

                <h3 style="margin-left: 45%; font-size: 35px;">계약 리스트 </h3>
                
               
  <table border="1"  align="center"   style="margin-top: 50px; width: 1200px;" >
 
    <tr align="center"   bgcolor="lightgreen">
      
      <td><b>보험식별번호</b></td>
      <td><b>보험료(만원)</b></td>
      <td><b>보험요율확인</b></td>
      <td><b>고객아이디</b></td>
      <td><b>고객추가정보</b></td>
      <td><b>승인상태</b></td>
      <td colspan="2"></td>
   </tr>
   

 	<c:forEach var="list" items="${list}" >        
   	<tr align="center">
      <td>${list.insuranceID}</td>
      <td>${list.insurancePEE}</td>
      <td><a href ="/insurance/InsuranceRate?id=${list.insuranceID}">요율</a></td>
      	<td>${list.clientID}</td>
    	<td><a href="/employee/clientview?id=${list.clientID}">고객추가정보</a></td>
        <td>${list.approveCheck}</td>
        <td><a href="#" onclick="DeleteContract('${list.clientID}' , '${list.insuranceID}')">계약해지하기</a></td>
        <td><a href="/employee/finalApprove?clientId=${list.clientID}&insuranceId=${list.insuranceID}&insurancePee=${list.insurancePEE}">최종승인하기</a></td>
    </tr>

</c:forEach>   
</table>
	


  

<a href ="/Contract/back"><button style="margin-top: 2%; margin-left: 3%; width: 150px; height: 70px; font-size: 25px; margin-left: 45%;">이전으로</button></a>

                
            </article>
        </section>
    </body>
</html>