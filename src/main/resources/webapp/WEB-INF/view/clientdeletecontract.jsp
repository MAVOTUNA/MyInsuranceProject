<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        function checkOnlyOne(element) {
            
    var obj = document.getElementsByName("InsuranceCheck");
    for(var i=0; i<obj.length; i++) {
      if(obj[i] != element) {
  
        obj[i].checked = false;
      }
    }
    	
    	element.checked = true;
    }   
        function explanation(obj){
        	
        	alert(obj);
        	
        }

        function deletecontract(obj) {
        	
        	console.log(obj);

            var Check = confirm("정말로 해지 하시겠습니까?");
			
			if(Check) {
				
				location.href="/Contract/clientdeletecontractOK?insuranceId="+obj;
			}

        }
</script>
    </head>
    <body>

        <section style="margin-top: 50px;">
            <article>

                <h3 style="margin-left: 45%; font-size: 35px;">보험 리스트</h3>
                
               
  <table border="1"  align="center"   style="margin-top: 50px; width: 800px;" >
 
    <tr align="center"   bgcolor="lightgreen">
      
      <td><b>보험이름</b></td>
      <td><b>보험료(만원)</b></td>
      <td><b>보험설명</b></td>
      <td></td>
   </tr>
   

 	<c:forEach var="list" items="${list}" >        
   	<tr align="center">
      <td>${list.insuranceName}</td>
      <td>${list.insurancePee}</td>
      <td><a href ="#" onclick="explanation('${list.insuranceExplanation}')">보험설명보기</a></td>
    	<td><a href="#" onclick="deletecontract('${list.insuranceId}')">해지하기</a></td>
    </tr>

</c:forEach>   
</table>
	
  

<a href ="/Contract/clientback"><button style="margin-top: 2%; margin-left: 3%; width: 150px; height: 70px; font-size: 25px; margin-left: 45%;">이전으로</button></a>

                
            </article>
        </section>
    </body>
</html>