class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @issue = Issue.find(params[:issue_id])
    if params[:id] == "0"
      @question = Question.root
    elsif Question.root == Question.find(params[:id])
      if params[:query] == "false"
        redirect_to root_path
      else
        question = Question.root.children.where(content: @issue.name).first
        @question = question.children.first
        render :show
      end
    elsif Question.find(params[:id]).children.empty?
      redirect_to edit_user_issue_path(current_user.id, @issue.id, answer: params[:query], question: params[:id] )
    else
      parent = Question.find(params[:id])
      if params[:query] == "false"
        @question = parent.children.last
      else
        @question = parent.children.first
      end
      render :show
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
