$(function(){
	
	$(".update").click(function(){
		
//		alert("=====");
//		alert($(this).parent().parent().children().eq(0).html());
		var id=$(this).parent().parent().children().eq(0).html();
		$("#updateid").val(id);
		
		var name=$(this).parent().parent().children().eq(1).html();
		$("#updatename").val(name);
		
		var age=$(this).parent().parent().children().eq(2).html();
		$("#updateage").val(age);
		
	});
	
});