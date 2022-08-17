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
          height: 45px;
          font-size: 30px;
      }
      
       body {
        background-color: #FBF5EF;
        }
      
        </style>
        
        <script>
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
            <form name="reg" action="/insurance/addCancerInsurance" method="get">  
            <table width="40%" height="900px" align="center" style="margin-top:70px; font-size: 18px; " border="1 solid"  >
              
                <tr>    
                    <th colspan="2" height="35px" style="font-size: 40px;">암 보험 개발</th>
                </tr>
                <tr>
                    <th>보험 식별 번호</th>
                    <td id="Rateinput"><input type="text" id="Rateinput"  name="InsuranceID"></td>
                </tr>
                <tr>
                    <th>암보험 이름 설정</th>
                    <td id="Rateinput"><input type="text" id="Rateinput"  name="InsuranceName"></td>
                </tr>

                <tr>
                    <th>보험료(만원)</th>
                    <td id="Rateinput"><input type="number" id="Rateinput"  name="InsurancePee"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center" style="height: 30%;">보험 요율 계산을 위한 수치 입력 (1.0 ~ 1.2 사이입력)</td>
                </tr>

                
                <tr>
                    <th>나이 50 미만</th>
                    <td id="Rateinput"><input type="number" id="Rateinput"  name="AgeCase1" max="1.2" min="1" step="0.01"></td>
                </tr>
                
                <tr>
                <th>나이 50 이상</th>
                <td id="Rateinput"><input type="number" id="Rateinput"  name="AgeCase2" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>암에 걸린적이 없는경우</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput"  name="MyCancerCase1" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>암이5년 이내에 2기이상이였던 경우</th>
                    <td id="Rateinput"><input type="number" id="Rateinput"  name="MyCancerCase2" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>3년 이내에 2기이상 이였던 경우 </th>
                    <td id="Rateinput"><input type="number" id="Rateinput"  name="MyCancerCase3" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>1년 이내에 2기이상 이였던 경우</th>
                    <td id="Rateinput"><input type="number" id="Rateinput"  name="MyCancerCase4" max="1.2" min="1" step="0.01"></td>
                </tr>


                <tr>
                    <th>입원한적이 없는 경우</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput" name="AdmissionHistory1" max="1.2" min="1" step="0.01"></td>
                </tr>
                <tr>
                    <th>5년 이내에 한번이라도 입원한경우</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput"  name="AdmissionHistory2" max="1.2" min="1" step="0.01"></td>
                </tr>
                <tr>
                    <th>3년 내에 두번에서 세번이상입원한 경우</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput" name="AdmissionHistory3" max="1.2" min="1" step="0.01"></td>
                </tr>
                <tr>
                    <th>최근까지도 입원한 경우</th>
                    <td id="Rateinput"><input type="number" id="Rateinput"  name="AdmissionHistory4" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>가족중 암에 걸린사람이 아무도 없는 경우</th>
                    <td id="Rateinput"><input type="number" id="Rateinput" name="FamillyCancerCase1" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 10년이내에 암2기이상이였던 경우</th>
                    <td id="Rateinput"><input type="number" id="Rateinput" name="FamillyCancerCase2" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 5년이내에 암2기이상이였던 경우</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput"name="FamillyCancerCase3" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 3년이내에 암2기이상이였던 경우</th>
                    <td id="Rateinput"><input type="number"  id="Rateinput"name="FamillyCancerCase4" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>부모님중 한분이라도 2년이내에 암에 걸린적이있거나 현재 투병중인경우 </th>
                    <td id="Rateinput"><input type="number" id="Rateinput" name="FamillyCancerCase5" max="1.2" min="1" step="0.01"></td>
                </tr>

                <tr>
                    <th>조부모님중 한분이라도 5년이내에 암에 걸린적이있는 경우 </th>
                    <td id="Rateinput"><input type="number"  id="Rateinput"name="FamillyCancerCase6" max="1.2" min="1" step="0.01"></td>
                </tr>
          
            </table>

            <div style="height: 250px; width: 50%; margin-left: 25%; border-style: solid; "  >   

            <div style="float: left;  width: 22.3%; height: 100%; border-right: solid; border-bottom: solid;">
                <p style="font-size: 25px; margin-top: 30%; text-align: center;">암보험설명</p>
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