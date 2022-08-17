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
            button{
            margin-left: 40%;
            width: 20%;
            height: 10%;
            font-size: 35px;
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
       
       <script>
       function backToHome(){
    	   location.href="/main/"
       }
      
       </script>
    </head>
    <body>
        <div style="width: 2000px;">
            <header> 
          
                <table align="center" border="1"  >
                   <c:forEach var="Employee" items="${list}" >
                    <tr height="10" align="center"  bgcolor="lightgreen">
                        <td >ID</td>
                        <td >이름</td>
                       <td >직책</td>
                       <td >연봉(만원) </td>
                       <td> 년차(년)</td>
                    </tr>   
            
                    <tr height="10" align="center"  bgcolor="lightgreen">
                        <td >${Employee.id}</td>
                        <td >${Employee.name}</td>        
                        <td> ${Employee.department}</td>
                          <td> ${Employee.pay}</td>   
                        <td>${Employee.yeartowork}</td>  
                     </tr>   
                     </c:forEach>
                    </table>
            </header>
        </div>
        <br><br>
        <section>
            <article>
             <c:forEach var="EmployeeWork" items="${list}" >
             <c:choose>
             <c:when test="${EmployeeWork.department eq '인수심사' }">
              <a href ="/employee/ApproveContract"><button type="submit" class="ApproviewReviw" >청약심사</button></a>
             </c:when>
             
             <c:when test="${EmployeeWork.department eq '보험개발' }">
               <a href="/employee/developeCarInsurance?id=${EmployeeWork.id}"><button type="submit" class="DevelopInsurance" >차보험개발하기</button></a>
                <br><br><br><br>
                 <a href="/employee/developeCancerInsurance?id=${EmployeeWork.id}"><button type="submit" class="DevelopInsurance" >암보험개발하기</button></a>
                <br><br><br><br>
                <a href="/insurance/InsuranceList"><button type="submit" class="DevelopInsurance" >보험삭제하기</button></a>
             </c:when>
             
             <c:when test="${EmployeeWork.department eq '사고처리담당' }">
              <a href="/employee/accidentApply"><button type="submit" class="AccidentHandle" >고객사고처리</button></a>
             </c:when>
             </c:choose>
             <!--  
                <div id="EmployeeForm" >
                    <br>
                  
                    <br><br><br><br>
                   
                   
                    <br><br><br><br>
                  </div> -->
                   <br><br><br><br>
                    <button type="submit" class="Logout" onclick="backToHome()">로그아웃</button>
                  </c:forEach>
            </article>
        </section>  
    </body>
</html>