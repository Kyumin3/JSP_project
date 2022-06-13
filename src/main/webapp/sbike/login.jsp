<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <title>로그인</title>
     <link rel="stylesheet" href="../source/join-login/login.css">
<script type="text/javascript">
function check(event){                                         
	 with(document.loginfrm){                      
	  if(id.value===""){
		event.preventDefault();
	   	alert("아이디를 입력해주세요.");                       
	   	subject.focus();                           
	  }                                         
	  if(pass.value === ""){
	  	event.preventDefault();
	   	alert("비밀번호를 입력해주세요.");                  
	   	pw.focus();                              
	  }                                        
	  document.loginfrm.submit();                       
	 }                                          
}    


</script>
</head>
<body>

 <div id="header">
            <a href="index.jsp" target="_blank" title="Sam's Bike"><img src="../source/img/logo.png" id="logo"></a>
        </div>

		<form name="loginfrm" id="loginfrm" method="post" action="login.do" autocomplete="off">
        <div id="wrapper">

            <div id="content">

                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" name="id">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="pswd">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd" class="int" maxlength="20" name="pass">
                    </span>
                </div>
                
                <div class="btn_area">
                    <button type="submit" id="btnJoin" onClick="check(event);">
                        <span>로그인</span>
                    </button>
                </div>
			
                
            </div> 

        </div> 
		</form>

</body>
</html>