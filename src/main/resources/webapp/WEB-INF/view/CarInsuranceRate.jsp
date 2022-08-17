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
         
            <table width="40%" height="900px" align="center" style="margin-top:80px; font-size: 18px; " border="1 solid"  >
			<c:forEach var="CarRate" items="${CarInsuranceList}">
   
                
                <tr>
                    <td colspan="2" align="center" style="height: 10%;">보험 요율 계산을 위한 수치(1.0 ~ 1.2)</td>
                </tr>

                
                <tr>
                    <th>나이가 24세 이상 50세미만</th>
                    <td id="Rateinput">${CarRate.ageCase1}</td>
                </tr>
                
                <tr>
                <th>나이가 24세 이하 이거나 50세 이상인경우</th>
                <td id="Rateinput">${CarRate.ageCase2}</td>    
            </tr>

                <tr>
                    <th>차가격 2000만원이하</th>

                    <td id="Rateinput">${CarRate.carPriceCase1}</td>
                </tr>

                <tr>
                    <th>차가격 2000만원 이상 4000만원 이하</th>
                    <td id="Rateinput">${CarRate.carPriceCase2}</td>
                </tr>

                <tr>
                    <th>차가격 4000만원 이상</th>

                    <td id="Rateinput">${CarRate.carPriceCase3}</td>
                </tr>

                <tr>
                    <th>운전경력이 1년이하인경우</th>
                    <td id="Rateinput">${CarRate.driveYearCase1}</td>
                </tr>

                <tr>
                    <th>운전경력이 3년이상 7년이하인경우</th>
                    <td id="Rateinput">${CarRate.driveYearCase2}</td>
                </tr>
                <tr>
                    <th>운전경력이 7년이상</th>
                    <td id="Rateinput">${CarRate.driveYearCase3}</td>
                </tr>

                <tr>
                    <th>배기량 1000cc미만</th>
                    <td id="Rateinput">${CarRate.engineDisplacement1}</td>
                </tr>

                <tr>
                    <th>배기량 1000cc이상 1600cc미만</th>

                    <td id="Rateinput">${CarRate.engineDisplacement2}</td>
                
                </tr>

                <tr>
                    <th>배기량 1600cc이상 2000cc미만</th>
                    <td id="Rateinput">${CarRate.engineDisplacement3}</td>
                </tr>

                <tr>
                    <th>배기량 2000cc이상 2500cc미만</th>
                    <td id="Rateinput">${CarRate.engineDisplacement4}</td>
                </tr>

                <tr>
                    <th>배기량 2500cc이상 4000cc미만</th>
                    <td id="Rateinput">${CarRate.engineDisplacement5}</td>
                </tr>

                <tr>
                    <th>배기량 4000cc이상</th>
                    <td id="Rateinput">${CarRate.engineDisplacement6}</td>
                </tr>

         </c:forEach>
            </table>

          
            
            
			
        </article>
		    </section>
    

     
          
    
    

    
    </body>
    </html> 