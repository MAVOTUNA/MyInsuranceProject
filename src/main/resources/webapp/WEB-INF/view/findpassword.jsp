<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="test.css" />
        <style>
            #authForm {

                background-color: yellow;
                display: table;
                margin-left: 35%;
                margin-top: 15%;
                width: 30%;
                height: 300px;
                resize: none;

            }
            #checkEmployee , #checkClient   {
               
                font-size: 50px;
            }
            .screen_out {
                /* text-align: center; */
                font-size: 30px;
                width: 50%;
                height: 0%;
                margin-left: 5%;
            }
            .LoginTitle {
                  text-align: center;
                  font-size: 30px;
            
            }
            #loginId {
                margin-left: 5%;
            }
            #CheckBox{
                float: left;
                width: 23px;
                height: 23px;
                margin-left: 30%;
            }
            #BoxTitle{
                float: left;
            }
            .txt_find {
                margin-left: 15%;
            }
            .login_find{
                font-size: 20px;
            }
            
              body {
                background-color: #FBF5EF;
            }
        </style>
            <meta charset="UTF-8">
    </head>
    <script>
    function checkOnlyOne(element) {
    	
    var obj = document.getElementsByName("check");
    for(var i=0; i<obj.length; i++) {
      if(obj[i] != element) {
        obj[i].checked = false;
      }
    }
    	element.checked = true;
    }
      
    function goback() {
		history.back();
	}
    
    </script>
<body>
 
        <form method="get" id="authForm" action="${contextPath}/main/findpasswordOK">
              <legend class="LoginTitle"><b>비밀번호 찾기</b></legend>
              <br>

             <div >
                <input type="checkbox"  name="check" id="CheckBox" value="1" onclick="checkOnlyOne(this)">
                <span id="BoxTitle">직원</span>
              </div>

              <div >
                <input type="checkbox"  name="check" id="CheckBox" style="margin-left: 30px;" value="2" onclick="checkOnlyOne(this)">
                <span id="BoxTitle">고객</span>
              </div>

              <br> <br>

                <div class="inp_text">
                  <label class="screen_out">아이디 : </label>
                  <input type="text" id="id"  name="id" placeholder="ID" class="screen_out"  style="margin-left: 30px;">
                </div>

                <br>

                <div class="inp_text">
                  <label class="screen_out">이메일 : </label>
                  <input type="email" id="email"  name="email" placeholder="email" class="screen_out">
                </div>
            
              <br>

                <span class="txt_find">
                    
                    <input type="submit" class="login_find" value="비밀번호 찾기" style="margin-left: 80px; width: 200px; height: 50px;">
                 	<input type="button" onclick="goback()" style="margin-left: 30px; width: 120px; height: 50px; font-size: 20px" value="취소하기">
                 </span>
          </form>
          

    

</body>

</html>