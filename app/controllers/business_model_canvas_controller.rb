class BusinessModelCanvasController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @blocs = Bloc.all(sort: :position)
    @post = Post.new
    @posts = Post.all
  end
  
end
