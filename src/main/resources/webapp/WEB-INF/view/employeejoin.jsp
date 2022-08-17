<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    header {
        margin-top: 5%;
        margin-left: 42%;
    }

    
    tr{
       margin-left: 30%;
       width: 10%;
       height: 20px;
       border : 1px solid black;
    }
    th{
        border : 1px solid black;
    }
    td {
        border : 1px solid black;
    }
    
    table {
       font-size: 25px;
    }
    input{
        width: 200px;
        height: 40px;
        font-size: 30px;
    }
    select{
        font-size: 18px;
        width: 200px;
        height: 40px;
    }
    #PhoneNumber {
        width: 20%;
    }
    
     body {
        background-color: #FBF5EF;
        }
  

</style>
<script type="text/javascript">
function goBack() {
	window.history.back();
}
</script>

</head>
<body>
    <header>
        <h1 style="font-size: 50px">직원 회원 가입</h1>
    </header>
<section>
    <article >
    <form name="reg" action="/employee/addEmployee" method="post"> 
        <table width="750px" height="1000px" align="center" style="margin-top:80px;"  >
              
            <tr>
                <th colspan="2" height="80" style="font-size: 40px;">직원추가하기</th>
            </tr>
            <tr>
                <th>아이디</th>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="pw"></td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <th>메일</th>
                <td><input type="email" name="email"></td>
            </tr>
            
            <tr>
                <th>연락처</th>
                <td ><input type="text" name="phone" size="3" id="phone" placeholder="010-0000-0000">
                    </td>
            </tr>
           
             <tr>
                <th>연봉</th>
                <td >
                    <input type="text" name="pay"/>만원
                </td>
            </tr>  
            
             <tr>
                <th>입사년도</th>
                <td >
                    <input type="text" name="yeartowork"/>
                </td>
            </tr>  

            <tr>
               <th>부서</th>
                <td>
                    <select name ="department">
                        <option value="1">인수심사</option>
                        <option value="2">보험개발</option>
                        <option value="3">사고처리담당</option>
                    </select>
                </td>
            </tr>  

                <td align="center" colspan="2"><input type="submit" value="가입하기" style="font-family: 'Nanum Myeongjo', serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" style="font-family: 'Nanum Myeongjo', serif;"  value="취소하기" onclick="goBack();"></td>
            </tr>
        </table>
        </form>

    </article>

</section>

</body>
</html>