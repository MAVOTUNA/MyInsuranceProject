<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       font-size: 25px;
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
        <form id="AccidentSummmit" action="/client/applyAccidentOK" >
            <table align="center">
                
                    <tr > 
                        <th style="width: 200px " >사고내용</th>
                        <td><textarea name="Content" style="width: 500px; height: 500px; font-size: 20px;"></textarea></td>
                    </tr>

                    <tr style="height: 100px; width: 200px" >
                        <th>손해액</th>
                        <td><input type="text" name="DamageMoney" style="margin-left: 20px; float: left; margin-top: 18px;" >
                           <p style="float: left; margin-left: 15px;" >만원</p></td>
                    </tr>
                    <tr style="height: 100px; width: 200px" >
                        <td align="center" colspan="2"><input type="submit" value="제출하기" style="height: 70px " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </tr>
                    
            </table>
              </form>
        </article>
    </section>
</body>
</html>