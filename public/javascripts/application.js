	$(document).ready(function(){
        //  Initialize Backgound Stretcher	   
	

 

  $menu = $('#main-menu');

  $menu.click(function(event) {
    event.stopPropagation();
  });
  $('#menu-button').click(function(event) {
    $menu.toggleClass('menu-open');
    event.stopPropagation();
  });
  $('body').keyup(function(e) { 
    if (e.keyCode == 27) {
      $menu.removeClass('menu-open');
    }
  });

  $(document).click(function() {
    $menu.removeClass('menu-open');
  });







		
	});

$(window).on('load resize orientationchange', function() {
  $('header.main .inner').height($(document).height());
});




  
