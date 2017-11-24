class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    if params[:id].nil?
      @question = Question.root
    else
      @question = Question.find(params[:id])
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
