$(document).ready(function() {
 
  $('#createMenu').on('submit',function(e){
  	e.preventDefault();
  	
  	$.ajax({
  		url: '/menu/new',
  		type: 'post',
  		data: $('#createMenu').serialize()
  	}).done(function(data){
  		if(data === 'false'){
  			$('#fading').css("display","block")
  			$('#fading').html('Your menu must have a title!')
  		}else{
  			$('#fading').css("display","block")
  			$('#fading').html('Added!')
  			$('#fading').fadeOut(3000)

  			$('#menus').prepend(data + "<br/>")	
  		}
  		
  		
  	})
  })

});
