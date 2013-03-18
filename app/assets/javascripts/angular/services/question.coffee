class Question
  create:(newQuestion)=>
    params = 
      question: newQuestion
    req = @$http.post '/questions', params

    req.success (data) =>
      @$rootScope.$broadcast 'new_question', data

  upvote:(question)=>
    id = question.id
    req = @$http.post '/questions/' + id + '/vote_up'


  index:()=>
    req = @$http
      method: 'GET',
      url: '/questions.json'

    req.success (data) =>
      @$rootScope.$broadcast 'questions', data

  constructor: (@$rootScope, @$http)->


bitmaker.service 'Question', ['$rootScope', '$http', Question]
