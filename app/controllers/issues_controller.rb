class IssuesController < ApplicationController
  params.require(:product).permit(:name, :description, :photo)
end
