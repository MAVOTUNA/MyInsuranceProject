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
    <style>
         tr{
       margin-left: 30%;
       width: 1400px;
       height: 20px;
       border : 1px solid black;
    }

    table {
       font-size: 20px;
       border : 1px solid black;
    }
    tr,td,th{
        border : 1px solid black;   
    }

    
    input{
        width: 150px;
        height: 40px;
        font-size: 30px;
    }
    #AccidentContent {
        border: 3 solid black;
    }
    
     body {
        background-color: #FBF5EF;
        }


    </style>
    <script>
    	function backToHome(){
    		history.back();
    	}
    	
    	function content(obj){
    		
    		alert(obj)
    	}
    </script>
</head>     
<body>
    <header>
        <div style="float: right; width: 2000px; height: 100px;  ">
            <button type="submit" style="width: 200px; margin-top: 10px; height: 70%;  margin-left: 55%; " onclick="backToHome()" ><p style="font-size: 20px;">이전으로</p></button>
        </div>
       
    </header>
    <br><br>
    <section>
        <article>
        <c:forEach var="list" items="${list}">
        <form action="/employee/addCompensation">
            <table align="center">
            	
            		<tr > 
                        <th style="width: 200px " >고객아이디</th>
                        <td>${list.clientID}</td>
                    </tr>
            	
                    <tr > 
                        <th style="width: 200px " >사고내용</th>
                        <td><a href="#" onclick="content('${list.content}')">내용보기</a></td>
                    </tr>

                    <tr style="height: 50px; width: 200px" >
                        <th>손해액</th>
                        <td>${list.damageMoney}</td>
                    </tr>
                    
                    <tr style="height: 100px; width: 200px" >
                        <th>보상금액 입력</th>
                        <td><input type="text" name="Compensation">
                        	<input type="hidden" name="ClientID" value="${list.clientID}">
                        </td>
                    </tr>
                    <tr style="height: 100px; width: 200px" >
                        <td align="center" colspan="2"><input type="submit" value="제출하기" style="height: 70px " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </tr>
                   
            </table>
             </form>
              </c:forEach>
        </article>
    </section>
</body>
</html>