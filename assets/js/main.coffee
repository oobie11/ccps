$ ->
	$(window).scroll ->
		top = $(window).scrollTop()
		if (top >= $('.navigation').outerHeight())
			$(".navigation").addClass("fixed-top animated fadeInDown")
			$("body").addClass('headerfix')
		else 
			$(".navigation").removeClass("fixed-top animated fadeInDown")	
			$('body').removeClass("headerfix")

	$(window).load ->
		'use strict'
		$('.parallax-section').parallax('50%', 0.3)

	# $('.cta-btn').hover ->
	# 	if $(this).hasClass('animated rubberBand')
	# 		$(this).removeClass('animated rubberBand')
	# 	else
	# 		$(this).addClass('animated wobble')

	$('#header_slider.carousel').carousel
	  interval: 5000

	if $('#header_slider').length > 0
		$('a.scroll-to').bind 'click', (event) ->
		    event.preventDefault()
		    $anchor = $(this)
		    $('body').stop().animate { scrollTop: ($($anchor.data('scroll-to')).offset().top) - 77 }, 1500, 'easeInOutExpo'

	$(".expandable-photo").click ->
		bigphoto = $("#photoModal img")
		photo = $(this).find("img")

		bigphoto.attr('src',photo.attr('src'))
		bigphoto.attr('title',photo.attr('title'))
		bigphoto.attr('alt',photo.attr('alt'))

		$("#photoModal h4").text(photo.attr('title'))
		$("#photoModal .caption").text(photo.attr('alt'))
		$("#photoModal").modal('show')
