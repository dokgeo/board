
function commonajax(type,surl,param,callback){
 $.ajax({
	type : type,
	url : url,
	data : param,
	success : function(data){
		return callback(data)
	},
	error : function (){
		alert('오류가 발생하였습니다.');
	}
})
}

