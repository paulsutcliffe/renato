jQuery(function($) {

    $('#new_contacto')
      .on('ajax:success', function(event, xhr, status, error){
        $(this).find('.field input, textarea').val(''); 
        $('#success-message').fadeIn('slow');
      })

     
});


$(document).ready(function(){
  //  Initialize Backgound Stretcher	   
	

 
  // MENÚ
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


  


  show_contact_form();


		
});

$(window).on('load resize orientationchange', function() {
  $('header.main .inner').height($(document).height());
});

function show_contact_form() {
  form = $('header form');
  content = $('#content');
  button = $('#contact-us');
  button.removeAttr('href');
  cerrar = $('#cerrar-form');

  form.css({'opacity': 0, 'display':'none'});


  button.stop().toggle(
    function() {
      form.css('display', 'block');
      form.stop().animate({'opacity':1}, 'slow');
      content.stop().animate({'opacity': 0}, 'slow', function() {jQuery(this).css('display', 'none')});
    },
    function() {
      content.css('display', 'block');
      content.stop().animate({'opacity': 1}, 'slow');
      form.stop().animate({'opacity':0}, 'slow', function() {jQuery(this).css('display', 'none')});
    }
  );

  cerrar.click(function() {
    button.trigger('click');
  });

}




  
