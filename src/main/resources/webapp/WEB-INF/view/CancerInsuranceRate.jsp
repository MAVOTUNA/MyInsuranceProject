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
				<c:forEach var="CancerRate" items="${CancerInsuranceList}">
                
                
                <tr>
                    <td colspan="2" align="center" style="height: 10%;">보험 요율 계산을 위한 수치(1.0 ~ 1.2)</td>
                </tr>

                
                <tr>
                    <th>나이 50 미만</th>
                    <td id="Rateinput">${CancerRate.ageCase1}</td>
                </tr>
                
                <tr>
                <th>나이 50 이상</th>
                <td id="Rateinput">${CancerRate.ageCase2}</td>    
            </tr>

                <tr>
                    <th>암에 걸린적이 없는경우</th>

                    <td id="Rateinput">${CancerRate.myCancerCase1}</td>
                </tr>

                <tr>
                    <th>암이5년 이내에 2기이상이였던 경우</th>
                    <td id="Rateinput">${CancerRate.myCancerCase2}</td>
                </tr>

                <tr>
                    <th>3년 이내에 2기이상 이였던 경우</th>

                    <td id="Rateinput">${CancerRate.myCancerCase3}</td>
                </tr>

                <tr>
                    <th>1년 이내에 2기이상 이였던 경우</th>
                    <td id="Rateinput">${CancerRate.myCancerCase4}</td>
                </tr>

                <tr>
                    <th>입원한적이 없는 경우</th>
                    <td id="Rateinput">${CancerRate.admissionHistory1}</td>
                </tr>
                <tr>
                    <th>5년 이내에 한번이라도 입원한경우</th>
                    <td id="Rateinput">${CancerRate.admissionHistory2}</td>
                </tr>

                <tr>
                    <th>3년 내에 두번에서 세번이상입원한 경우</th>
                    <td id="Rateinput">${CancerRate.admissionHistory3}</td>
                </tr>

                <tr>
                    <th>최근까지도 입원한 경우</th>
                    <td id="Rateinput">${CancerRate.admissionHistory4}</td>
                </tr>

                <tr>
                    <th>가족중 암에 걸린사람이 아무도 없는 경우</th>
                    <td id="Rateinput">${CancerRate.famillyCancerCase1}</td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 10년이내에 암2기이상이였던 경우</th>
                    <td id="Rateinput">${CancerRate.famillyCancerCase2}</td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 5년이내에 암2기이상이였던 경우</th>
                    <td id="Rateinput">${CancerRate.famillyCancerCase3}</td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 3년이내에 암2기이상이였던 경우</th>
                    <td id="Rateinput">${CancerRate.famillyCancerCase4}</td>

                </tr>

                <tr>
                    <th>부모님중 한분이라도 2년이내에 암에 걸린적이있거나 현재 투병중인경우</th>
                    <td id="Rateinput">${CancerRate.famillyCancerCase5}</td>

                </tr>

                <tr>
                    <th>조부모님중 한분이라도 5년이내에 암에 걸린적이있는 경우</th>
                 <td id="Rateinput">${CancerRate.famillyCancerCase6}</td>

                </tr>


           </c:forEach>
            </table>

          

        </article>

     
          
    
    
    </section>
    
    </body>
    </html> 