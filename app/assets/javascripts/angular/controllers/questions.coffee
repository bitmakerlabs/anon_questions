questions = []

class @QuestionsController

  initialize: (@$scope) ->
    $.getJSON '/questions.json', @onLoad

  onLoad: (data) =>
    @$scope.questions = data


onQuestionsLoad = (data) ->
  questions = data
