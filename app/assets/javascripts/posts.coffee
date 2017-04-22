# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.launch.icon.item').click ->
    $('.ui.sidebar')
      .sidebar('setting', 'transition', 'overlay')
      .sidebar('toggle')

  $('.comment_btn').click (e) ->
    e.preventDefault()
    if $(this).hasClass('active')
      $(this).removeClass('active')
      $(this).next().slideToggle(300);
    else
      $(this).addClass('active')
      $(this).next().slideToggle(300);
      #Compare with the below code which triggers scroll-up
      #$(this).next().css("display", "block")
    return false

  $('.like_btn').click (e) ->
    #only direct child
    $(this).children('.ui.button').toggleClass('red')
    $(this).children('.ui.label').toggleClass('red')
