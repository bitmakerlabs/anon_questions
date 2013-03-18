class Question
  init:=>
    req = @$http.get '/questions'
    req.success (data)=>
      @data = data
      @$rootScope.$broadcast 'questions', @data
  create:(newQuestion)=>
    params = 
      question: newQuestion
    req = @$http '/questions', params

    req.success (data) =>
      @$rootScope.$broadcast 'add_questions', data

  index:()=>
    req = @$http
      method: 'GET',
      url: '/questions.json'

    req.success (data) =>
      @$rootScope.$broadcast 'questions', data

  constructor: (@$rootScope, @$http)->


bitmaker.service 'Question', ['$rootScope', '$http', Question]
