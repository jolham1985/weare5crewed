class IssuesController < ApplicationController
<<<<<<< HEAD
  params.require(:product).permit(:name, :description, :photo)
=======

  def index
    @issues = Issues.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
  end

  def destroy
  end
>>>>>>> 7c4223fe713c8a29deaa25dc0da9e605ff773320
end
