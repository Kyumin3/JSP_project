<%@page import="model.sbike.SbikeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="../source/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../source/bootstrap/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="../source/css/style.css" rel="stylesheet">
<link href="../source/board/read3.css" rel="stylesheet">

<script lang="javascript">

function Del() {
	var flag = confirm("정말로 삭제하시겠습니까?");
	if(flag){
		location.href="../sbike/delete.do?postNum=${param.postNum}";
	}
}
</script>
</head>
<body>

<%@ include file="menu.jsp"  %>




<div class="container" style="margin-top: 150px">
<h4 align="center" style="font-size: 20px; margin-bottom: 50px;">고객후기 게시판</h4>
<div class="program-contents">
    <div class="ui viewboard">
        <div class="ui viewboard-header">
            <h2 class="ui viewboard-tit">${dto.title }</h2>

            <div class="ui viewboard-opt">
                <span>작성자 :${dto.writerId }</span>
                <span>게시일 :${dto.postDate }</span>
                <span class="date">조회수 :${dto.count }</span>
            </div>
        </div>
        <div class="ui viewboard-file">
        	<% SbikeDTO dto =(SbikeDTO)request.getAttribute("dto");
        		if(dto.getOfile1()!=null){
        	%>
            <a href="../sbike/download.do?ofile=${dto.ofile1 }&sfile=${dto.sfile1 }&postNum=${dto.postNum }" title="1" class="btn btn-file btn-on-ico">
                <i class="bi bi-card-image"></i>${dto.ofile1 }
            </a>
            <%} %>
        	<% 
        		if(dto.getOfile2()!=null){
        	%>
            <a href="../sbike/download.do?ofile=${dto.ofile2 }&sfile=${dto.sfile2 }&postNum=${dto.postNum }" title="2" class="btn btn-file btn-on-ico">
                <i class="bi bi-card-image"></i>${dto.ofile2 }
            </a>
            <%} %>
        	<% 
        		if(dto.getOfile3()!=null){
        	%>
            <a href="../sbike/download.do?ofile=${dto.ofile2 }&sfile=${dto.sfile2 }&postNum=${dto.postNum }" title="3" class="btn btn-file btn-on-ico">
                <i class="bi bi-card-image"></i>${dto.ofile2 }
            </a>
            <%} %>
        </div>

        <div class="ui viewboard-cont" data-text-content="true">
            <div class="ui detail-cont">
                <div class="ui viewboard-content">
                    <p></p>
                    <p></p>
                    
                    ${dto.content }
                    <br><br>
                    <% 
        			if(dto.getOfile1()!=null){
        			%>
        				<p><img src="../sbike/download.do?ofile=${dto.ofile1 }&sfile=${dto.sfile1 }&postNum=${dto.postNum }" alt="image"></p><br><br>
            		<%} %>
                    
            		<% 
        			if(dto.getOfile2()!=null){
        			%>
        				<p><img src="../sbike/download.do?ofile=${dto.ofile2 }&sfile=${dto.sfile2 }&postNum=${dto.postNum }" alt="image"></p><br><br>
            		<%} %>
                    
            		<% 
        			if(dto.getOfile3()!=null){
        			%>
        				<p><img src="../sbike/download.do?ofile=${dto.ofile3 }&sfile=${dto.sfile3 }&postNum=${dto.postNum }" alt="image"></p>
            		<%} %>

                    <p>&nbsp;</p>
                    <p></p>
                </div>
            </div>
        </div>
    </div>
    <div class="rdbtn">
    	<a href="../sbike/reviewboard.do" class="btn btn-dark" id="writebtn">목록</a>
    	<%
    	if(session.getAttribute("id")!=null){
    		if(session.getAttribute("id").equals(dto.getWriterId())){%>
    	<a href="../sbike/edit.do?postNum=${param.postNum}" class="btn btn-dark" id="writebtn">수정하기</a>
    	<a href="#" id="writebtn" class="btn btn-dark" onclick="Del()">삭제하기</a>
    	<%}
    		} %>
    	<br><br>
    </div>
</div>
</div>


</body>
</html>