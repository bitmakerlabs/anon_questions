class ShowQuestions

  upvote: (question) =>
    question.votes += 1
    @Question.upvote question

  addQuestion: () =>
    newQuestion = @$scope.newQuestion
    newQuestion.votes = 1
    @Question.create newQuestion
    @$scope.newQuestion = {}

  reset:(e, questions=null)=>
    @$scope.questions = questions

  new_question: (e, question=null)=>
    @$scope.questions.push question if question

  constructor: (@$scope, @Question) ->
    @$scope.upvote = @upvote
    @$scope.addQuestion = @addQuestion
    @$scope.newQuestion = {}
    @Question.index()
    @$scope.$on 'questions', @reset
    @$scope.$on 'new_question', @new_question


bitmaker.controller 'show_questions', ['$scope', 'Question', ShowQuestions]
