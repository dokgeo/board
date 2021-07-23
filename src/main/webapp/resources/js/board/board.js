function selectBoardInfo(data){
		
}


function boardInfo(data){
	var html ='';
	var boardInfo = data.result;
	 
	html += '<tr>';
  	html += '<td>'+boardInfo.board_id+'</td>';
	html +=	'<td>'+boardInfo.board_title+'</td>';
	html +=	'<td>'+boardInfo.board_date+'</td>';                        	
    html += '<td>'+boardInfo.board_reg_user+'</td>';
    html += '<td><a class="btn btn-primary pull-right" style="width:70px">수정</a></td>';
    html += '<td><a class="btn btn-primary pull-right" style="width:70px">삭제</a></td>';
    html += '</tr>';
	
	$("#board_content").append(html);
	
}


