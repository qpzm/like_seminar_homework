# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# ajax가 아니므로 아래의 코드는 동작하지 않음
$ ->
  $('.like_btn').click (e) ->
    #only direct child
    $(this).children('.ui.button').toggleClass('red')
    $(this).children('.ui.label').toggleClass('red')
