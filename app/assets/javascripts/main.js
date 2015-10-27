$(function() {
  $('.main.menu a').bind('click', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: $($anchor.attr('href')).offset().top
    }, 1500,'easeInOutExpo');
    event.preventDefault();
  });

  $('.tabs.menu .item').tab();
  $('.profiles .column').popup();
  $('select.dropdown').dropdown();

  $('.main.menu').visibility({
    once: false,
    type: 'fixed'
  });
});
