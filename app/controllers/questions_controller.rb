class QuestionsController < ApplicationController
  def index
    @questions = Question.order(:votes)
  end

  def vote_up
    question = Question.find params[:id]
    question.votes += 1
  end
end
