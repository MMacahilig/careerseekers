var CareerSeekers = CareerSeekers || {};

CareerSeekers.Form = (function(window, undefined) {
  var init = function(selector) {
    var $form = $(selector);
    initXhrSubmit($form);
    initValidation($form);
  };

  var initXhrSubmit = function($form) {
    $form.on("ajax:success", function(e, data, status, xhr) {
      if(data.result === true) {
        $(this).find('.negative').hide();
        $(this).find('.form').hide();
        $(this).find('.info').show();
      }
      else {
        $(this).find('.negative').show();
      }
    });
  };

  var initValidation = function($form) {
    $form.form({
      fields: {
        email: {
          identifier : 'email',
          rules: [
            {
              type : 'email',
              prompt : 'Please enter a valid e-mail'
            }
          ]
        },
        degree: {
          identifier : 'degree',
          rules: [
            {
              type: 'maxLength[75]',
              prompt : 'Please enter 75 characters or less'
            }
          ]
        }
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
