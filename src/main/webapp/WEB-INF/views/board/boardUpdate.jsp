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
                        
                        <br>
                        <div> 등록 </div>
                        <br><br>
						<form id="boardUpdate" name="boardUpdate" method="post" action="/updateBoard" onsubmit="return checkForm()"> 
					
					 		<input type="hidden" name="boardId" value="${update.boardId}" readonly="readonly"> 
							<div id="boardtitle">
								<label>제목</label>
								<div>
								<input type="text" id="boardTitle" name="boardTitle" value="${update.boardTitle}" maxlength="21" placeholder="제목을 입력하세요">
								</div>
							</div>
							<div>
								<label>내용</label>
								<div>
								<textarea rows="10" cols="30" id="boardContent" style="resize:none" name="boardContent" maxlength="101" placeholder="100자이내로 입력하세요" ><c:out value="${update.boardContent}"></c:out></textarea>
								</div>
							</div>
							<div>
								<label>작성자</label>
								<div>
									<input type="text" id="boardReg_user" name="boardRegUser"  value="${update.boardRegUser}" maxlength="11" placeholder="이름을 입력하세요">
								</div>
							</div>
							<input type="submit" value="수정">
								<input type="submit" formmethod="post" formaction="/" value="취소">
						</form>
		

</main>
</body>
<script type="text/javascript">

function checkForm(){
	var spcWord = /[~!@#$%^&*()_+|<>?:{}]/gi; // 특수문자
	var space = /\s/g;
	var chkForm = document.boardUpdate;

		if(chkForm.boardTitle.value==""){
			alert("제목을 입력하세요");
			return false;
		}else if(spcWord.test(chkForm.boardTitle.value)){
			alert("특수문자는 입력할수없습니다.");
			return false;
		}else if(chkForm.boardTitle.value.length>20){
			alert("20자이내로 입력해주세요.");
			return false;
		}
		
		
		if(chkForm.boardContent.value==""){
			alert("내용을 입력하세요");
			return false;
		}else if(spcWord.test(boardContent.value)){
			alert("특수문자는 입력할수없습니다.");
			return false;
		}else if(chkForm.boardContent.value.length>100){
			alert("100자이내로 입력해주세요.");
			return false;
		}
		
		if(chkForm.boardRegUser.value==""){
			alert("작성자명을 입력하세요");
			return false;
		}else if(spcWord.test(chkForm.boardRegUser.value)){
			alert("특수문자는 입력할수없습니다.");
			return false;
		}else if(chkForm.boardRegUser.value.match(space)){
			alert("공백 없이 입력해주세요");
			return false;
		}else if(chkForm.boardRegUser.value.length>10){
			alert("10자이내로 입력해주세요.");
			return false;
		}
}
</script>
</html>