class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(:votes)
  end

  def vote_up
    question = Question.find params[:id]
    question.votes += 1
  end
end