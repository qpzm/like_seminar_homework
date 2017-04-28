# ajax가 아니므로 아래의 코드는 동작하지 않음
# class red를 추가하면 빨간색으로 바뀐다
# like button을 누르면 새로고침되므로 아래의 코드는 현재는 필요없음
# 다만 ajax로 사용, 참조할 수 있도록 예시로 남겨둠
#$ ->
  #$('.like_btn').click (e) ->
    ##only direct child
    #$(this).children('.ui.button').toggleClass('red')
    #$(this).children('.ui.label').toggleClass('red')
