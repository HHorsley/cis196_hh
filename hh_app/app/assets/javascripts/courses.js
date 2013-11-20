
$(function(){
	$("#department_input").mouseover(function(){
		$("#help_department").css("color","#515252");
	});
	$("#department_input").mouseout(function(){
  		$("#help_department").css("color","#B1B1B3");
	});

	$("#description_input").mouseover(function(){
		$("#help_dont_stress").css("color","#515252");
	});
	$("#description_input").mouseout(function(){
  		$("#help_dont_stress").css("color","#B1B1B3");
	});

	$("#instructor_input").mouseover(function(){
		$("#help_instructor").css("color","#515252");
	});
	$("#instructor_input").mouseout(function(){
  		$("#help_instructor").css("color","#B1B1B3");
	});
});