(function() {
  $(function() {
    $(window).scroll(function() {
      var top;
      top = $(window).scrollTop();
      if (top >= $('.navigation').outerHeight()) {
        $(".navigation").addClass("fixed-top animated fadeInDown");
        return $("body").addClass('headerfix');
      } else {
        $(".navigation").removeClass("fixed-top animated fadeInDown");
        return $('body').removeClass("headerfix");
      }
    });
    $(window).on('load', function() {
      'use strict';
      return $('.parallax-section').parallax('50%', 0.3);
    });
    $('#header_slider.carousel').carousel({
      interval: 5000
    });
    if ($('#header_slider').length > 0) {
      $('a.scroll-to').bind('click', function(event) {
        var $anchor;
        event.preventDefault();
        $anchor = $(this);
        return $('html, body').stop().animate({
          scrollTop: ($($anchor.data('scroll-to')).offset().top) - 77
        }, 1500, 'easeInOutExpo');
      });
    }
    return $(".expandable-photo").click(function() {
      var bigphoto, photo;
      bigphoto = $("#photoModal img");
      photo = $(this).find("img");
      bigphoto.attr('src', photo.attr('src'));
      bigphoto.attr('title', photo.attr('title'));
      bigphoto.attr('alt', photo.attr('alt'));
      $("#photoModal h4").text(photo.attr('title'));
      $("#photoModal .caption").text(photo.attr('alt'));
      return $("#photoModal").modal('show');
    });
  });

}).call(this);
