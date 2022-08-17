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
    
    <script type="text/javascript">
    function backtoHome(){
    	history.back();
    	
    }
    </script>
    
    </head>
    <body>
        <header>
            <div style="width: 2000px;">
                <header> 
                    <table align="center" border="1 solid black" style="width: 1400px; height: 80px;" >
                      <c:forEach var="employee" items="${list}" >
                        <tr height="10" align="center"  bgcolor="lightgreen">
                           <td >ID</td>
                           <td >이름</td>
                           <td >직책</td>
                           <td >연봉(만원) </td>
                           <td> 년차(년)</td>
                           <td> 핸드폰 번호 </td>
                        </tr>   
                
                        <tr height="10" align="center"  bgcolor="lightgreen">
                            <td >${employee.id }</td>
                            <td >${employee.name }</td>              
                            <td >${employee.department }</td>
                            <td >${employee.pay}</td>
                            <td>${employee.yeartowork}</td>
                            <td >${employee.phone}</td>
                         </tr>   
						</c:forEach>                         
                        </table>
                </header>
            </div>
        </header>
    <section>
        <article >
            <form name="reg" action="/insurance/addCarInsurance" method="get">  
            <table width="40%" height="900px" align="center" style="margin-top:70px; font-size: 18px; " border="1 solid"  >
              
                <tr>    
                    <th colspan="2" height="35px" style="font-size: 40px;">자동차 보험 개발</th>
                </tr>
                <tr>
                    <th>보험 식별 번호</th>
                    <td id="Rateinput"><input type="text"  id="Rateinput" name="InsuranceID"></td>
                </tr>

                <tr>
                    <th>보험료(만원)</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput" name="InsurancePee"></td>
                </tr>
                <tr>
                    <th>자동차 보험 이름 설정</th>
                    <td id="Rateinput"><input type="text" id="Rateinput" name="InsuranceName" style="font-size: 20px;"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center" style="height: 10%;">보험 요율 계산을 위한 수치 입력 (1.0 ~ 1.2 사이입력)</td>
                </tr>

                
                <tr>
                    <th>나이가 24세 이상 50세미만</th>
                    <td id="Rateinput"><input type="number" name="AgeCase1" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>
                
                <tr>
                <th>나이가 24세 이하 이거나 50세 이상인경우</th>
                <td id="Rateinput"><input type="number" name="AgeCase2" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>차가격 2000만원이하</th>
                    <td id="Rateinput"><input type="number" name="CarPriceCase1" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>차가격 2000만원 이상 4000만원 이하</th>
                    <td id="Rateinput"><input type="number"  name="CarPriceCase2" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>차가격 4000만원 이상</th>
                    <td id="Rateinput"><input type="number" name="CarPriceCase3" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>운전경력이 1년이하인경우</th>
                    <td id="Rateinput"><input type="number" name="DriveYearCase1" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>운전경력이 3년이상 7년이하인경우</th>
                    <td id="Rateinput"><input type="number" name="DriveYearCase2" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>
                <tr>
                    <th>운전경력이 7년이상</th>
                    <td id="Rateinput"><input type="number" name="DriveYearCase3" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>배기량 1000cc미만</th>
                    <td id="Rateinput"><input type="number" name="EngineDisplacement1" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>배기량 1000cc이상 1600cc미만</th>
                    <td id="Rateinput"><input type="number" name="EngineDisplacement2" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>배기량 1600cc이상 2000cc미만</th>
                    <td id="Rateinput"><input type="number" name="EngineDisplacement3" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>배기량 2000cc이상 2500cc미만</th>
                    <td id="Rateinput"><input type="number" name="EngineDisplacement4" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>배기량 2500cc이상 4000cc미만</th>
                    <td id="Rateinput"><input type="number" name="EngineDisplacement5" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

                <tr>
                    <th>배기량 4000cc이상</th>
                    <td id="Rateinput"><input type="number" name="EngineDisplacement6" id="Rateinput" min="1" max="1.2" step="0.01"></td>
                </tr>

           
            </table>

            <div style="height: 250px; width: 50%; margin-left: 25%; border-style: solid;"  >

            <div style="float: left;  width: 22.3%; height: 100%; border-right: solid; border-bottom: solid;">
                <p style="font-size: 25px; margin-top: 30%; text-align: center;">자동차 보험설명</p>
            </div>

            <div style="float: right; width:77.25%; height: 100%; border-bottom: solid;"  >
              <textarea style="width: 100%; height: 100%; font-size: 20px;" name="InsuranceExplanation"></textarea>
              <br><br><br>
            </div>

        </div>
			
        <input type="submit" value="보험만들기" style="margin-top: 50px; margin-left: 65%; font-family: 'Nanum Myeongjo', serif; font-size: 30px; margin-left: 30%; ">
       
</form>
<button value="취소하기"  onclick="backtoHome()" style="width: 200px; height: 40px; font-family: 'Nanum Myeongjo', serif; font-size: 30px; margin-left: 30% " >이전으로</button>
</article>
        
    </section>
    
    </body>
    </html> 