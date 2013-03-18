class ShowQuestions
  questions: [
        question: 'this',
        votes: 10
      ,
        question: 'that',
        votes: 100
    ]

  upvote: (question) =>
    question.votes += 1

  addQuestion: () =>
    newQuestion = @$scope.newQuestion
    newQuestion.votes = 0
    @questions.push newQuestion
    @$scope.newQuestion = {}


  constructor: (@$scope, @Question) ->
    @$scope.questions = @Question.index
    @$scope.upvote = @upvote
    @$scope.addQuestion = @addQuestion
    @$scope.newQuestion = {}


bitmaker.controller 'show_questions', ['$scope', 'Question', ShowQuestions]
