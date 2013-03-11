# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
# 

Bitmaker = Bitmaker || {}

Bitmaker.questions = {
  init: () ->
    $('.upvote .button a').click (e) ->
      $this = $(this)[0]
      url = $this.href
      console.log url
      $.ajax {
        url: url,
        method: 'POST',
        completion: () ->
          alert 'done'
      }
      return false
}


Bitmaker.questions.init()
