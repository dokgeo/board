$(document).ready(function(){
$.ajax({
	url : "${pageCotext.request.contextPath}/boardList}",
	type : "POST",
	 data: param,
     dataType: "json",
	success: function(data){
	for(var i = 0;  i<boardInfo.length; i++){
		var text = boardInfo[i];
		
			$("#board_content").html('');
			text = '<tr>'
				text += '<td></td>'
			     +'<td>'+list.board_title+'</td>'
				 + '<td>'+list.board_reg_user+'</td>'
				 + '<td>'+list.board_reg_date+'</td>'
				 + '<td><a class="btn btn-primary pull-right" style="width:70px">수정</a></td>'
				 + '<td><a class="btn btn-primary pull-right" style="width:70px">삭제</a></td>'
				 text +='</tr>'
	
		$("#board_content").append(text);
	}
},
error : function(){
	console.log("실패");
	
}
});

});

