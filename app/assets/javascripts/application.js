// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery.turbolinks
//= require chosen-jquery
//= require BootSideMenu
//= require jquery.pjax
//= require turbolinks
//= require_tree .

$(function() {
  $(document).pjax('.subject-link-pjax li a:not([data-remote]):not([data-behavior]):not([data-skip-pjax])', '[data-pjax-container]')
});

$(document).ready(function() {
  if ($('.pagination').length) {
    $(window).scroll(function() {
      var url = $('.pagination .next_page').attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
        $('.pagination').text("Please Wait...");
        return $.getScript(url);
      }
    });
    return $(window).scroll();
  }
});


$(document).ready(function(){
	setTimeout(function(){
		$('#notice_wrapper').fadeOut("slow", function() {
			$(this).remove();
		})
	}, 3000);

	$('[data-toggle="tooltip"]').tooltip();

});

// initialize with defaults
$("#input-id").fileinput();

// with plugin options
$("#input-id").fileinput({'showUpload':false, 'previewFileType':'any'});

// for jquery.turbolinks
$(document).on('page:fetch', function() {
  $(".loading-indicator").show();
});
$(document).on('page:change', function() {
  $(".loading-indicator").hide();
});
