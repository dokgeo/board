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
	            
	                        	<div id="boardtitle">
								<label>제목</label>
								<div>
								<input type="text" id="boardTitle" name="boardTitle" value="${detail.boardTitle}" readonly ="readonly">
								</div>
							</div>
							<div>
								<label>내용</label>
								<div>
								<textarea id="boardContent" style="resize:none" name="boardContent"  readonly ="readonly"><c:out value="${detail.boardContent}"  ></c:out></textarea>
								</div>
							</div>
							<div>
								<label>작성자</label>
								<div>
									<input type="text" id="boardReg_user" name="boardRegUser" value="${detail.boardRegUser} "  readonly ="readonly">
								</div>
							</div>
								<tr>
	                        	<td><a href="javascript:updateBoard(${detail.boardId});" class="btn btn-primary pull-right" style="width:70px">수정</a></td>
	                        	<td><a href="javascript:deleteBoard(${detail.boardId});"id="delete_btn" class="btn btn-primary pull-right" style="width:70px">삭제</a></td>
	                        	<td><a href="/"id="delete_btn" class="btn btn-primary pull-right" style="width:70px">게시판으로</a></td>
	                        	</tr>
	                        	</tbody>
                        </table>
                        <br>

</main>
</body>
<script type="text/javascript">
$(document).ready(function(){
	var form = $("form[name='objForm']")
})

function deleteBoard(obj){
	var ans = confirm("삭제하시겠습니까?");
	
	if(ans){
		$.ajax({
		 url:"/deleteBoard?boardId="+obj
		,type:"post"
		,data:obj
		,success:function(data){
			alert("삭제하였습니다.");
			location.href = "/";
			}
		});
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