<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link href="../source/img/favicon.png" rel="icon">

<title>SAM'S BIKE</title>
<meta content="" name="description">
<meta content="" name="keywords">

<link href="../source/img/favicon.png" rel="icon">
  	
  
<link href="../source/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="../source/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../source/bootstrap/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="../source/write/write.css">
<script type="text/javascript">
function check(event){                                         
	 with(document.editfrm){                      
	  if(title.value===""){
		event.preventDefault();
	   	alert("제목을 입력해주세요.");                       
	   	title.focus();           
	   	return false;
	  }                                         
	  if(content.value === ""){
	  	event.preventDefault();
	   	alert("내용을 입력해주세요.");                  
	   	content.focus();                              
	  }                                        
	 }                                          
}    


</script>
</head>
<body>
<div id="header">
            <a href="index.jsp" target="_blank" title="Sam's Bike"><img src="../source/img/logo.png" id="logo"></a>
        </div>

		<form name="editfrm" method="post" action="edit.do" enctype="multipart/form-data" autocomplete="off">
		<input type="hidden" name="postNum" value="${dto.postNum }"/>
		<input type="hidden" name="prevOfile1" value="${dto.ofile1 }"/>
		<input type="hidden" name="prevSfile1" value="${dto.sfile1 }"/>
		<input type="hidden" name="prevOfile2" value="${dto.ofile2 }"/>
		<input type="hidden" name="prevSfile2" value="${dto.sfile2 }"/>
		<input type="hidden" name="prevOfile3" value="${dto.ofile3 }"/>
		<input type="hidden" name="prevSfile3" value="${dto.sfile3 }"/>
		<div id="wrapper">
            <div id="content">

                <div>
                    <h3 class="join_title">
                        <label for="id">제목</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" name="title">
                    </span>
                </div>
                
                <div>
                    <h3 class="join_title">
                        <label for="id">작성자</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" name="writerId" value="<%=session.getAttribute("id")%>" readonly/>
                    </span>
                </div>

                <h3 class="join_title"><label>내용</label></h3>
                <textarea rows="10" cols="55" name="content"></textarea>
                <h3 class="join_title"><label>사진등록</label></h3>
                <label>
                <input type="file" name="ofile1">
                </label>
                <label>
                <input type="file" name="ofile2">
                </label>
                 <label>
                <input type="file" name="ofile3">
                </label><br><br>
                
                <div id="btns">              
                <button type="submit" onClick="check(event);">글쓰기</button>
                <a href="#" onClick="history.go(-1)"><button type="button">취소</button></a>
             	</div>  
             	</div>
             	</div>
             	</form>
             	

</body>
</html>