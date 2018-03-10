$(window).scroll(function() {
  if ($(this).scrollTop()) {
      $('#scroll').fadeIn();
  } else {
      $('#scroll').fadeOut();
  }
});

$('#scroll').click(function() {
$("html, body").animate({ scrollTop: 0 }, "medium");
return false;
});
