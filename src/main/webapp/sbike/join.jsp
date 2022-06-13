<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        
        <link rel="stylesheet" href="../source/join-login/join.css">
        
    </head>
    <body>
    
        <div id="header">
            <a href="index.jsp" target="_blank" title="Sam's Bike"><img src="../source/img/logo.png" id="logo"></a>
        </div>

		<form id="joinfrm" method="post" action="join.do" autocomplete="off">
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
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" maxlength="20" name="pass">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20" name="name">
                    </span>
                </div>
                
                <div>
                    <h3 class="join_title"><label for="address">주소</label></h3>
                    <span class="box int_address">
                        <input type="text" id="sample6_postcode" placeholder="우편번호" class="int" maxlength="20" name="postcode" readonly/>
                    </span>
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                    <span class="box int_address">
                        <input type="text" id="sample6_address" placeholder="주소" class="int" maxlength="20" name="address1" readonly/>
                    </span>
                    <span class="box int_address">
                        <input type="text" id="sample6_detailAddress" placeholder="상세주소" class="int" maxlength="20" name="address2">
                    </span>
                    <span class="box int_address">
                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" class="int" maxlength="20" name="address3" readonly/>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)" name="yy">
                            </span>
                        </div>

                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel" name="mm">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <div id="bir_dd">
                            <span class="box">
                                <select id="dd" class="sel" name="dd">
                                    <option>일</option>
                                    <% for(int i=1; i<=31; i++){
                                    	if(i<10){%>
                                    		<option value="0<%=i%>"><%=i%></option>	
                                    	<%}else{ %>
                                    		<option value="<%=i%>"><%=i%></option>
                                    	<%} 
                                    	}%>

                                </select>
                            </span>
                        </div>

                    </div>
                </div>

    

                <div>
                    <h3 class="join_title"><label for="email">이메일</label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="example@abc.com" name="email">
                    </span>
                </div>

                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="숫자만 입력" name="tel">
                    </span>
                </div>


                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                    
                </div>
			
                

            </div> 

        </div> 
        </form>
        <% request.getRequestDispatcher("login.jsp"); %>
    <script src="../source/join-login/main.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    </body>
</html>