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
						<form id="boardUpdate" method="post" action="/updateBoard"> 
					 		<input type="hidden" name="boardId" value="${update.boardId}" readonly="readonly"> 
							<div id="boardtitle">
								<label>제목</label>
								<div>
								<input type="text" id="boardTitle" name="boardTitle" value="${update.boardTitle}" maxlength="20">
								</div>
							</div>
							<div>
								<label>내용</label>
								<div>
								<textarea id="boardContent" style="resize:none" name="boardContent" maxlength="100"><c:out value="${update.boardContent}"></c:out></textarea>
								</div>
							</div>
							<div>
								<label>작성자</label>
								<div>
									<input type="text" id="boardReg_user" name="boardRegUser"  value="${update.boardRegUser}" maxlength="10">
								</div>
							</div>
							<input type="submit" value="수정">
								<input type="submit" formmethod="post" formaction="/" value="취소">
						</form>
		

</main>
</body>
<script type="text/javascript">


</script>
</html>