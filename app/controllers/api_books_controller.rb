class ApiBooksController < ApplicationController
  def index
    @books=Book.all
    render json: @books, each_serializer: BookSerializer, root: false
  end 	

end
