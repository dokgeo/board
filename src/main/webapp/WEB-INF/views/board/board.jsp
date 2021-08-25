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
						<form id="boardInsert" name="boardInsert" method="post" action="/insertBoard" onSubmit="return checkForm()"> 
							<div id="boardtitle">
								<label>제목</label>
								<div>
								<input type="text" id="boardTitle" name="boardTitle" maxlength="21" placeholder="제목을 입력하세요">
								</div>
							</div>
							<div>
								<label>내용</label>
								<div>
								<textarea rows="10" cols="30" id="boardContent" style="resize:none" name="boardContent" maxlength="101" placeholder="100자이내로 입력하세요" ></textarea>
								</div>
							</div>
							<div>
								<label>작성자</label>
								<div>
									<input type="text" id="boardRegUser" name="boardRegUser" maxlength="11" placeholder="이름을 입력하세요">
								</div>
							</div>
							<div>
								<label>전화번호</label>
								<div>
									<input type="text" id="boardPhone" name="boardPhone" maxlength="12" placeholder="'-'를 제외한 번호를 입력하세요">
								</div>
							</div>
							
							<input type="submit" value="등록">
								<input type="reset" value="취소">
						</form>
		

</main>
</body>
<script type="text/javascript">

function deleteBoard(obj){
	var ans = confirm("삭제하시겠습니까?");
	
	if(ans){
		$.ajax({
		 url:"/deleteBoard?boardId="+obj
		,type:"post"
		,data:obj
		,success:function(data){
			alert("삭제하였습니다.");
			$(".board").load("/ #board_Main,#board_content");
			
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

function checkForm(){
	var spcWord = /[~!@#$%^&*()_+|<>?:{}]/gi; // 특수문자
	var engWord = /[a-zA-Z]/; // 문자
	var korWord = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크
	var space = /\s/g; //공백
	
	var chkForm = document.boardInsert;
		//제목 체크
		if(chkForm.boardTitle.value==""){
			alert("제목을 입력하세요");
			return false;
		}else if(spcWord.test(chkForm.boardTitle.value)){
			alert("특수문자는 입력할수없습니다.");
			boardTitle.value =  "";
			return false;
		}else if(chkForm.boardTitle.value.length>20){
			alert("20자이내로 입력해주세요.");
			boardTitle.value =  "";
			return false;
		}
		
		//내용 체크
		if(chkForm.boardContent.value==""){
			alert("내용을 입력하세요");
			return false;
		}else if(spcWord.test(boardContent.value)){
			alert("특수문자는 입력할수없습니다.");
			boardContent.value = "";
			return false;
		}else if(chkForm.boardContent.value.length>100){
			alert("100자이내로 입력해주세요.");
			return false;
		}
		//작성자 체크
		if(chkForm.boardRegUser.value==""){
			alert("작성자명을 입력하세요");
			return false;
		}else if(spcWord.test(chkForm.boardRegUser.value)){
			alert("특수문자는 입력할수없습니다.");
			boardRegUser.value = "";
			return false;
		}else if(chkForm.boardRegUser.value.match(space)){
			alert("공백 없이 입력해주세요");
			return false;
		}else if(chkForm.boardRegUser.value.length>10){
			alert("10자이내로 입력해주세요.");
			boardRegUser.value =  "";
			return false;
		}
		//번호체크
		if(chkForm.boardPhone.value==""){
			alert(" '-' 제외한 번호를 입력하세요");
			return false;
		}else if(spcWord.test(chkForm.boardPhone.value)){
			alert("특수문자는 입력할수없습니다.");
			boardPhone.value="";
			return false;
		}else if(engWord.test(chkForm.boardPhone.value)){
			alert("숫자만 입력가능합니다.");
			boardPhone.value="";
			return false;
		}else if(korWord.test(chkForm.boardPhone.value)){
			alert("숫자만 입력가능합니다.");
			boardPhone.value="";
			return false;
		}else if(chkForm.boardPhone.value.match(space)){
			alert("공백 없이 입력해주세요");
			return false;
		}else if(chkForm.boardPhone.value.length<10){
			alert("최소 10자리이상 번호를 입력해주세요");
			return false;
		}else if(chkForm.boardPhone.value.length>11){
			alert("11자이내로 입력해주세요.");
			boardPhone.value =  "";
			return false;
		}
		
}
	
	

</script>
</html>