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
      #Rateinput {
          width: 100px;
      }
      input{
          height: 35px;
          font-size: 30px;
      }
      
       body {
        background-color: #FBF5EF;
        }
       
    
    </style>
    
    <script>
    	function backToHome(){
    		history.back();
    	}
    </script>
    
    </head>
    <body>
        <header>
             <div style="float: right; width: 2000px; height: 100px;  ">
                <button type="submit" style="width: 200px; margin-top: 10px; height: 70%;  margin-left: 55%; " onclick="backToHome()" ><p style="font-size: 20px;">이전으로</p></button>
            </div>
           
               
            
        </header>
    <section>
        <article >
           
            <table width="40%" height="900px" align="center" style="margin-top:20px; font-size: 18px; " border="1 solid"  >
				<c:forEach var="list" items="${list}">

                
                <tr>
                    <th>나이</th>
                    <td id="Rateinput" style="width: 50%">${list.age}</td>
                </tr>
                
                <tr>
                <th>이름</th>
                <td id="Rateinput">${list.name}</td>    
            </tr>

                <tr>
                    <th>이메일</th>

                    <td id="Rateinput">${list.email}</td>
                </tr>

                <tr>
                    <th>연봉</th>
                    <td id="Rateinput">${list.salary}</td>
                </tr>

                <tr>
                    <th>직업</th>

                    <td id="Rateinput">${list.expert}</td>
                </tr>

                <tr>
                    <th>성별</th>
                    <td id="Rateinput">${list.gender}</td>
                </tr>

                <tr>
                    <th>고객의차가격</th>
                    <td id="Rateinput">${list.carprice}</td>
                </tr>
                <tr>
                    <th>고객운전경력</th>
                    <td id="Rateinput">${list.driveyear}</td>
                </tr>

                <tr>
                    <th>고객차의배기량</th>
                    <td id="Rateinput">${list.enginedisplacement}</td>
                </tr>

                <tr>
                    <th>고객의암경력</th>
                    <td id="Rateinput">${list.cancerhistory}</td>
                </tr>

                <tr>
                    <th>고객의입원병력</th>
                    <td id="Rateinput">${list.admissionhistory}</td>
                </tr>

                <tr>
                    <th>고객의가족 암경력</th>
                    <td id="Rateinput">${list.admissionhistory}</td>
                </tr>


           </c:forEach>
            </table>

          

        </article>

     
          
    
    
    </section>
    
    </body>
    </html> 