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
</script>
    </head>
    <body>

        <section style="margin-top: 50px;">
            <article>

                <h3 style="margin-left: 45%; font-size: 35px;">보험 리스트</h3>
                
                <form name="test" action="/Contract/AddContractOK">
  <table border="1"  align="center"   style="margin-top: 50px; width: 800px;" >
 
    <tr align="center"   bgcolor="lightgreen">
      
      <td><b>보험이름</b></td>
      <td><b>보험료(만원)</b></td>
      <td><b>보험설명</b></td>
      <td></td>
   </tr>
   

 	<c:forEach var="Insurance" items="${list}" >        
   	<tr align="center">
      <td>${Insurance.insuranceName}</td>
      <td>${Insurance.insurancePee}</td>
      <td><a href ="#" onclick="explanation('${Insurance.insuranceExplanation}')">보험설명보기</a></td>
    	<td><input type="checkbox" style="width: 30px; height: 30px;" name="InsuranceCheck" value="${Insurance.insuranceId}" onclick="checkOnlyOne(this)"></td>
    </tr>

</c:forEach>   
</table>

<input type="submit" value="청약하기" style="margin-left: 40%; margin-top: 2%; width: 150px; height: 70px; font-size: 25px; float: left;">
  </form>
  

<a href ="/Contract/clientback"><button style="margin-top: 2%; margin-left: 3%; width: 150px; height: 70px; font-size: 25px;">이전으로</button></a>

                
            </article>
        </section>
    </body>
</html>