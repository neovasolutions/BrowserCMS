$(document).ready(function () {
	$('#slideShow1').cycle({ 
	    fx:     'fade', 
	    speed:  1000, 
	    timeout: 3000, 
	    pager:  '#nav',
		next:   '#next', 
    	prev:   '#prev',
		before:  onBefore, 
    	after:   onAfter   
	});
	
	
	$("#arrow A").click(function(){ $("#logarea").slideDown('normal'); });
	$("#login A").click(function(){ $("#logarea").slideDown('normal');/*$("#login").addClass('active');$("#register").removeClass('active');*/ });
	$("#register A").click(function(){ $("#regarea").slideDown('normal');/*$("#register").addClass('active');$("#login").removeClass('active');*/ });
	$("#uarrow A").click(function(){ $("#userarea").slideDown('normal'); });
	$("#mem A").click(function(){ $("#userarea").slideDown('normal'); });
	
	$("#log LI.arrow A").click(function(){ $("#logarea").slideUp('normal');/*$("#login").removeClass('active');*/ });
	$("#log LI.close A").click(function(){ $("#logarea").slideUp('normal');/*$("#login").removeClass('active');*/ });
	$("#log LI.reg A").click(function(){ 
		$("#logarea").slideUp('normal', function(){
			$("#regarea").slideDown('normal');
		});
	});
	$("#regyet").click(function(){ 
		$("#logarea").slideUp('normal', function(){
			$("#regarea").slideDown('normal');
		});
	});
	$("#reg LI.arrow A").click(function(){ $("#regarea").slideUp('normal');/*$("#register").removeClass('active');*/ });
	$("#reg LI.close A").click(function(){ $("#regarea").slideUp('normal');/*$("#register").removeClass('active');*/ });
	$("#reg LI.log A").click(function(){ 
		$("#regarea").slideUp('normal', function(){
			$("#logarea").slideDown('normal');
		});
	});
	$("#usr LI.arrow A").click(function(){ $("#userarea").slideUp('normal'); });
	$("#usr LI.close A").click(function(){ $("#userarea").slideUp('normal'); });
	
	$("#anav UL LI A").click(function(){
		$(".account .tab").hide('normal');
		$("#" + $(this).attr("rel")).show('normal');
		$("#anav UL LI").removeClass("select");
		$(this).parent().addClass("select");
	});
	
	
	
});

function onBefore() {  } 
function onAfter() {
    $('#output').html( '<p>'+ $(this).children('p').text() + '</p>' );
}