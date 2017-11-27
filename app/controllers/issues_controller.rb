class IssuesController < ApplicationController

 # params.require(:issue).permit(:name, :description, :photo)


 def index
  issue_array = []
  current_user.apartments.each do |apartment|
    apartment.issues.each do |issue|
      issue_array << issue
    end
  end
  @issues = issue_array
end

def show
  @issue = Issue.find(params[:id])
end

def new
  @issue = Issue.new
end

def create
  @user = current_user
  @issue = Issue.new(issue_params)
  @issue.apartment_id = current_user.apartments.first.id
  @issue.category_id = 1
  @issue.name = label_id.first.description
  if @issue.save
    redirect_to user_issues_path(params[:user_id])
  else
    render 'new'
  end
end

def edit
  @issue = Issue.find(params[:id])
end

def update
  @issue = Issue.find(params[:id])
  @issue.update(issue_params)
  if @issue.save
    redirect_to user_issues_path(params[:user_id])
  else
    render 'edit'
  end
end

def destroy
  @issue = Issue.find(params[:id])
  @issue.destroy
  redirect_to user_issues_path(current_user.id)
end

private

def issue_params
  params.require(:issue).permit(:name, :photo)
end

def label_id
  project_id = "screwed-186912"
  file_name = @issue.photo.fullpath
  vision = Google::Cloud::Vision.new project: project_id
  labels = vision.image(file_name).labels
  labels.reject { |label|
    label.description.include? "appliance"
  }
end
end
