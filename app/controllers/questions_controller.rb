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
      questions = build_question_array
      questions.each do |question|
        @issue.questionnaire << question
      end
      redirect_to edit_user_issue_path(current_user.id, @issue.id)
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

  private

  def build_question_array
    array = Question.find(params[:id]).self_and_ancestors.reverse.drop(2)
    questions = []
    array.each_index do |index|
      (index + 1) == array.size ? questions << "#{array[index].content} #{humanize(params[:query])}" : questions << "#{array[index].content} #{humanize(array[index + 1].answer)}"
    end
    questions
  end

  def humanize(bool)
    bool == "true" ? "Yes" : "No"
  end
end
