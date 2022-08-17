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
        <h1 style="font-size: 50px">고객 회원 가입</h1>
    </header>
<section>
    <article >
    <form name="reg" action="/client/addClient" method="post"> 
        <table width="750px" height="1500px" align="center" style="margin-top:80px;"  >
              
            <tr>
                <th colspan="2" height="80" style="font-size: 50px;">회원가입</th>
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
                <td ><input type="text" name="phone" size="3" id="phone" placeholder="010-0000-0000"> - 
                    </td>
            </tr>
            <tr>
                <th>성별</th>
                <td >	
                    <input type="radio" name="gender" value="male" style="width: 20%;"/>남자
                    <input type="radio" name="gender" value="female" style="width: 20%;" />여자
                </td>
            </tr>  
            
              <tr>
                <th>나이</th>
                <td><input type="text" name="age"></td>
            </tr>
            
             <tr>
                <th>연봉</th>
                <td >
                    <input type="text" name="salary"/>만원
                </td>
            </tr>  
            
             <tr>
                <th>직업</th>
                <td >
                    <input type="text" name="expert"/>
                </td>
            </tr>  

            <tr id="MyCarPrice">
                <th>차가격</th>
                <td>
                    <select name ="carprice">
                        <option value="1">2000만원이하</option>
                        <option value="2">2000만원이상 4000만원 이하</option>
                        <option value="3">4000만원 이상</option>
                    </select>
                </td>
            </tr>   

            <tr id="DriveYear">
                <th>운전경력</th>
                <td>
                    <select name ="driveyear">
                        <option value="1">1년이하</option>
                        <option value="2">3년이상 7년 이하</option>
                        <option value="3">7년 이상</option>
                    </select>
                </td>
            </tr>

            <tr >
                <th>배기량</th>
                <td>
                    <select name ="enginedisplacement">
                        <option value="1">1000cc이하</option>
                        <option value="2">1000cc이상 1600cc미만</option>
                        <option value="3">1600cc이상 2000cc미만</option>
                        <option value="4">2000cc이상 2500cc미만</option>
                        <option value="5">2500cc이상 4000cc미만</option>
                        <option value="6">4000이상</option>
                    </select>
                </td>
            </tr>

            <tr>
                <th>암경력</th>
                <td>
                <select name="cancerhistory">
                    <option value="1">없음</option>
                    <option value="2">5년이내에 2기이상</option>
                    <option value="3">3년이내에 2기이상</option>
                    <option value="4">1년이내에 2기이상</option>
                </select>
            </td>
            </tr>

            <tr>
                <th>입원병력</th>
                <td>
                    <select name="admissionhistory">
                        <option value="1">없음</option>
                        <option value="2">5년이내에 한번이라도.</option>
                        <option value="3">3년내에 두세번이상</option>
                        <option value="4">최근까지도 입원하였음</option>
                    </select>
                </td>
            </tr>

            <tr>
                <th>가족의 암경력</th>
                <td>
                    <select name="familycancercheck" style="width: 400px;">
                        <option value="1">아무도 없다.</option>
                        <option value="2">부모님중 한분이라도 10년이내에 암2기이상 </option>
                        <option value="3">부모님중 한분이라도 5년이내에 암2기이상</option>
                        <option value="4">부모님중 한분이라도 3년이내에 암2기이상</option>
                        <option value="5">부모님중 한분이라도 2년이내에 암에 걸린적이있거나 현재 투병중</option>
                        <option value="6">조부모님중 한분이라도 5년이내에 암에 걸린적이있다.</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="가입하기" style="font-family: 'Nanum Myeongjo', serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" style="font-family: 'Nanum Myeongjo', serif;"  value="취소하기" onclick="goBack();"></td>
            </tr>
        </table>
        </form>


    </article>

</section>

</body>
</html>