# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  #Toggle open and close comments
  $('.comment_btn').click (e) ->
    e.preventDefault()
    if $(this).hasClass('active')
      $(this).removeClass('active')
      $(this).next().slideToggle(300)
    else
      $(this).addClass('active')
      $(this).next().slideToggle(300)
      #Compare with the below code which triggers scroll-up
      #$(this).next().css("display", "block")
    return false

  #ajax comment write and show
  #$('.new_comment').click (e) ->
    #post_id = $(this).data("post_id")
    #comment_area = $('.comment_area'+post_id)
    #e.preventDefault()
    #$.ajax({
      #method: "POST",
      #url: "/comments/create/"+post_id,
      #data: {content: comment_area.val()},
      #dataType: "json",
      #success: (data) ->
        #console.log(data)
        #str = ["<div class='comment'><div class='content'><a class='author'>",
               #data.user_name,
               #"</a><div class='metadata'><div class='date'>2 days ago</div></div><div class='text'>",
               #data.content,
               #"</div><div class='actions'><a class='reply'>Reply</a></div></div></div>"
        #].join(" ")
        #$("#comment_list"+post_id).append(str)
        #comment_area.val("")
    #})
