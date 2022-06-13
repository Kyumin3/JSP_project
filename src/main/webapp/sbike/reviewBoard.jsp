<%@page import="model.sbike.SbikeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../source/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="../source/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../source/bootstrap/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="../source/board/reviewBoard.css">
<link rel="stylesheet" href="../source/css/style.css">
<title>Insert title here</title>
</head>
<body>

<%@ include file="menu.jsp"  %>


<form method="get" name="boardFrm" action="reviewboard.do">
<div class="container" style="margin-top: 150px">
	<h4 align="center" style="font-size: 20px">고객후기 게시판</h4>
	<div class="ui program--search">
		<div class="float-md-left">
			<div class="ui program--count">
				<span>
                	<div class="bd_total">총 <strong>${map.totalCount}</strong>건  / 오늘 <strong>${todayCount }</strong>건</div>                	
                </span>
        	</div>
    	</div>

        <div class="search_inner clearfix float-md-right">
            <div class="fieldset">
            	<div class="search--select">
                    <span>
                		<select id="findItem" title="검색 카테고리 선택" name="searchField">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="writerId">작성자</option></select>                         
					</span>
                </div>
                <div class="search--text">
                    <span>
						<input type="text" name="searchWord" value="" title="검색어를 입력해주세요" placeholder="검색어를 입력해주세요" class="form-control">
					</span>
                </div>
                <div class="search--btn">
                    <span class="btn--submit"><input type="submit" value="검색"></span>
                </div>
            </div>
        </div>
    </div>

	<div class="no-more-tables">
		<table class="board_list table table-default" data-rwdb="yes">
			<colgroup><col class="col_ntt_no">
            	<col class="col_title">
           		<col class="col_wrt">
            	<col class="col_inq_cnt">
            	<col class="col_reg_date">
            	<col class="col_atch_nm">
            </colgroup>
			<thead class="thead-light">
				<tr>
					<th scope="col" class="ntt_no">글번호</th>
					<th scope="col" class="title">제목</th>
					<th scope="col" class="wrt">작성자</th>
					<th scope="col" class="inq_cnt">조회수</th>
					<th scope="col" class="reg_date">작성일</th>
					<th scope="col" class="atch_nm">이미지</th>
				</tr>
			</thead>

			<tbody>
			<c:forEach items="${boardList }" var="row" varStatus="loop">
				<tr class="bbs_notice">									
					<td class="ntt_no" data-cell-header="글번호">${map.totalCount-(((map.pageNum-1)*map.pageSize) + loop.index)}</td>
					<td class="title" data-cell-header="제목"><a href="../sbike/read.do?postNum=${row.postNum }">${row.title }</a> 	
					<td class="wrt" data-cell-header="작성자">${row.writerId }</td>
					<td class="inq_cnt" data-cell-header="조회수">${row.count }</td>
					<td class="reg_date" data-cell-header="작성일">${row.postDate }</td>
					<td class="atch_nm" data-cell-header="첨부파일">
					    <c:if test="${row.ofile1 != null}">
        				<i class="bi bi-card-image"></i>
    					</c:if>					
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="bot">
		<a href="../sbike/check.do" class="btn btn-dark" id="writebtn">글쓰기</a>
 		${ map.pagingImg }
 </div>
</div>
</form>
<script src="../source/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../source/swiper/swiper-bundle.min.js"></script>
<script src="../source/css/main.js"></script>

</body>
</html>