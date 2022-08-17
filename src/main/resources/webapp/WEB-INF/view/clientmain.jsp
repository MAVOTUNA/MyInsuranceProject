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
    <link rel="stylesheet" type="text/css" href="test.css" />
    <style>
        #ClientForm{
            /* background-color: yellow; */
            height: 80%;
            width: 60%;
            margin-left: 15%;

        }

        /* .Contract , .Accident , .DeleteContract , .Logout {
            margin-left: 20%;
            width: 25%;
            height: 15%;
        } */

        button{
            margin-left: 45%;
            width: 28%;
            height: 10%;
            font-size: 34px;
        }

        table{
            width: 1400px;
            height: 80px;
            font-size: 20px;
        }
        
         body {
        background-color: #FBF5EF;
        }

    </style>
</head>
<script>
    window.onfocus = function() {
        
    }
    window.onload = function(){
        window.focus();
        window.moveTo(0,0);
        window.resizeTo(1280,800);
        window.scrollTo(0,250)
    }
</script>
<body>
    <div style="width: 2000px;">
    <header> 
        <table align="center" border="1"  >
          <c:forEach var="Client" items="${list}" >
            <tr height="10" align="center"  bgcolor="lightgreen">
                <td >ID</td>
                <td >이름</td>
               <td >성별</td>              
               <td >나이</td>
               <td >직업</td>
               <td >연봉 </td>
               
               <td rowspan="2"><a href="${contextPath}/client/privacy?id=${Client.id}">추가정보</a></td>
            </tr>   
            
            <tr height="10" align="center"  bgcolor="lightgreen">
                <td >${Client.id}</td>      
                <td >${Client.name}</td>  
                <td >${Client.gender}</td>  
                <td >${Client.age}</td>  
                <td >${Client.expert}</td>
                <td >${Client.salary}</td>  
             </tr>   
             
             
             </c:forEach>
            </table>
    </header>
</div>
    <br> <br> <br>
    <section>

        <article>
          <div id="ClientForm" >
            <br>
            
            <a href="/Contract/clientaddcontract"><button type="submit" class="Contract" >보험가입</button></a>
            <br><br><br><br>
           	<a href="/client/applyAccident"><button type="submit" class="Accident" >사고처리</button></a>
            <br><br><br><br>
            <a href="/client/accidentlist"><button type="submit" class="Accident" >보상금확인</button></a>
            <br><br><br><br>
            <a href="/Contract/clientdeletecontract"><button type="submit" class="DeleteContract" >계약해지</button></a>
            <br><br><br><br>
            <a href="/main/"><button type="button" class="Logout" >로그아웃</button></a>
            
          </div>

        </article>

    </section>
   

</body>

</html>