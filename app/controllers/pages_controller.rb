class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @issue = Issue.new
  end
end
