<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

   <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <script src="js/jquery-3.6.0.min.js"></script>
       	<script src="js/common/common.js"></script>
        <script src="js/board/board.js"></script>
        
        
</head>
<body class="sb-nav-fixed">
<main>
                    <div class="container-fluid px-4">
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
                        	<tr >
                        	<td>1</td>
							<td>자유게시판 공지사항에 대해</td>
							<td>2021.07.06</td>                        	
                        	<td>관리자</td>
                        	<td><a class="btn btn-primary pull-right" style="width:70px">수정</a></td>
                        	<td><a class="btn btn-primary pull-right" style="width:70px">삭제</a></td>
                        	</tr>
                        	<tr>
                        	<td>2</td>
							<td>가입인사</td>
							<td>2021.07.21</td>                        	
                        	<td>관리자</td>
                			<td><a class="btn btn-primary pull-right" style="width:70px">수정</a></td>
                        	<td><a class="btn btn-primary pull-right" style="width:70px">삭제</a></td>
                        	</tr>
                        	<tr>
                        	<td>3</td>
							<td>아무말대잔치</td>
							<td>2021.07.12</td>                        	
                        	<td>회원1</td>
                         	<td><a class="btn btn-primary pull-right" style="width:70px">수정</a></td>
                        	<td><a class="btn btn-primary pull-right" style="width:70px">삭제</a></td>
                        	</tr>
                        	<tr>
                        	<td>4</td>
							<td>123414</td>
							<td>2021.07.12</td>                        	
                        	<td>회원2</td>
                       	 	<td><a class="btn btn-primary pull-right" style="width:70px">수정</a></td>
                        	<td><a class="btn btn-primary pull-right" style="width:70px">삭제</a></td>
                        	</tr>
                        </tbody>		
                        	
                        
                        </table>
                        
                        	<a href="" class="btn btn-primary pull-right">글쓰기</a>
<!--                         <div class="paging"> -->
<!--                         </div> -->
                        
<!--                         <div class="row"> -->
<!--                             <div class="col-xl-3 col-md-6"> -->
<!--                                 <div class="card bg-primary text-white mb-4"> -->
<!--                                     <div class="card-body">Primary Card</div> -->
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">View Details</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="col-xl-3 col-md-6"> -->
<!--                                 <div class="card bg-warning text-white mb-4"> -->
<!--                                     <div class="card-body">Warning Card</div> -->
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">View Details</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="col-xl-3 col-md-6"> -->
<!--                                 <div class="card bg-success text-white mb-4"> -->
<!--                                     <div class="card-body">Success Card</div> -->
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">View Details</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="col-xl-3 col-md-6"> -->
<!--                                 <div class="card bg-danger text-white mb-4"> -->
<!--                                     <div class="card-body">Danger Card</div> -->
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">View Details</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="row"> -->
<!--                             <div class="col-xl-6"> -->
<!--                                 <div class="card mb-4"> -->
<!--                                     <div class="card-header"> -->
<!--                                         <i class="fas fa-chart-area me-1"></i> -->
<!--                                         Area Chart Example -->
<!--                                     </div> -->
<!--                                     <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div> -->
<!--                                 </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                            </div>



</main>
</body>
</html>