# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.launch.icon.item').click ->
    $('.ui.sidebar')
      .sidebar('setting', 'transition', 'overlay')
      .sidebar('toggle')
  $('.new_comment').click ->
    $('.comment_field').show()
