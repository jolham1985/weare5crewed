class IssuesController < ApplicationController

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
end
