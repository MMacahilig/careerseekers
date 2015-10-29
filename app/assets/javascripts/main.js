var CareerSeekers = CareerSeekers || {};

CareerSeekers.Form = (function(window, undefined) {
  var init = function(selector) {
    $(selector).on("ajax:success", function(e, data, status, xhr) {
      if(data.result === true) {
        $(this).find('.error').hide();
        $(this).find('.form').hide();
        $(this).find('.success').show();
      }
      else {
        $(this).find('.error').show();
      }
    });
  };

  return {
    init : init
  }
})(window);

CareerSeekers.SemanticUI = (function(window, undefined) {
  var init = function() {
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
  };

  return {
    init : init
  }
})(window);

$(function() {
  CareerSeekers.SemanticUI.init();
  CareerSeekers.Form.init('#student-form');
  CareerSeekers.Form.init('#professional-form');
  CareerSeekers.Form.init('#company-form');
});
