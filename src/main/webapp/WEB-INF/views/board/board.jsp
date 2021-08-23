<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

   <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <script src="js/jquery-3.6.0.min.js"></script>
        <script src="js/common.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
</head>
  
<body class="sb-nav-fixed">
<main>
                    
                        <h1 class="mt-4">자유게시판</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">일상토론</li>
                        </ol>
                       
                        <table class="board">
                        <tbody id="board_Main">
                        	<tr>
                        	<td>No</td>
                        	<td class="board-title">제목</td>
                        	<td class="board-date">게시일자</td>
                        	<td class="board-reg_user">작성자</td>
                        	<td colspan="2"></td>
                        	</tr>
                        </tbody>
                        <tbody id="board_content">
	                        <c:forEach var="list" items="${list}">
	                         
	                        	<tr >
	                        	<td>${list.boardId}</td>
								<td><a href='/boardDetail?boardId=${list.boardId}'>${list.boardTitle}</a></td>
								<td>${list.boardDate}</td>                        	
	                        	<td>${list.boardRegUser}</td>
	                        	<td><a href="javascript:updateBoard(${list.boardId});" class="btn btn-primary pull-right" style="width:70px">수정</a></td>
	                        	<td><a href="javascript:deleteBoard(${list.boardId});"id="delete_btn" class="btn btn-primary pull-right" style="width:70px">삭제</a></td>
	                        	</tr>
                        	</c:forEach>
                        </tbody>		
                        </table>
                        
                        <br>
                        <div> 등록 </div>
                        <br><br>
						<form id="boardInsert" name="boardInsert" method="post" action="/insertBoard"> 
							<div id="boardtitle">
								<label>제목</label>
								<div>
								<input type="text" id="boardTitle" name="boardTitle" maxlength="20">
								</div>
							</div>
							<div>
								<label>내용</label>
								<div>
								<textarea id="boardContent" style="resize:none" name="boardContent" maxlength="100"></textarea>
								</div>
							</div>
							<div>
								<label>작성자</label>
								<div>
									<input type="text" id="boardRegUser" name="boardRegUser" maxlength="10">
								</div>
							</div>
							<div>
								<label>전화번호</label>
								<div>
									<input type="text" id="boardPhone" name="boardPhone" maxlength="11">
								</div>
							</div>
							
							<input type="submit" value="등록">
								<input type="reset" value="취소">
						</form>
		

</main>
</body>
<script type="text/javascript">
$(document).ready(function(){
// 	var form = $("form[name='objForm']")
	
// // 	var regExp = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
// // 	if
	
})

function deleteBoard(obj){

	if(!confirm("삭제하시겠습니까?")){
		alert("삭제를 취소했습니다.");
	}else{
		alert("삭제하였습니다.");
		location.href = "/deleteBoard?boardId="+obj
		}
}
function updateBoard(obj){

	if(!confirm("수정하시겠습니까?")){
		alert("수정을 취소했습니다.");
	}else{
		location.href = "/updateBoardDetail?boardId="+obj
		}
	
}
</script>
</html>