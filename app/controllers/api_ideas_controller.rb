class ApiIdeasController < ApplicationController
  def index
    @ideas=Idea.all
    render json: @ideas, each_serializer: IdeaSerializer, root: false
  end 	

end
