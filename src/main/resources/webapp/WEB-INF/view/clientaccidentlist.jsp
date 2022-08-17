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
        function explanation(obj){
        	
        	alert(obj);
        	
        }
</script>
    </head>
    <body>

        <section style="margin-top: 50px;">
            <article>

                <h3 style="margin-left: 45%; font-size: 35px;">사고 처리</h3>
                
  <table border="1"  align="center"   style="margin-top: 50px; width: 800px;" >
 
    <tr align="center"   bgcolor="lightgreen">
      
      <td><b>손해액</b></td>
      <td><b>보상액</b></td>
      <td><b>내용</b></td>
   </tr>
   

 	<c:forEach var="list" items="${list}" >        
   	<tr align="center">
      <td>${list.damageMoney}만원</td>
      <td>${list.compensation}만원</td>
      <td><a href ="#" onclick="explanation('${list.content}')">내용보기</a></td>
    </tr>

</c:forEach>   
</table>


<a href ="/Contract/clientback"><button style="margin-top: 2%; margin-left: 50%; width: 150px; height: 70px; font-size: 25px;">이전으로</button></a>

                
            </article>
        </section>
    </body>
</html>