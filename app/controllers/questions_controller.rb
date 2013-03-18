class QuestionsController < ApplicationController
  def index
    @questions = Question.order(:votes).reverse

    respond_to do |format|
      format.html
      format.json { render :json => @questions }
    end
  end

  def vote_up
    question = Question.find params[:question_id]
    question.votes += 1
    question.save!
    render :json => question
  end

  def create
    params.inspect
    question = Question.create! params[:question]
    respond_to do |format|
      format.json { render :json => question }
    end
  end
end
