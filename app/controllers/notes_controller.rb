class NotesController < ApplicationController
  
  def new
    #@post = Post.new
    @post = Post.find(params[:post_id])
    @note = @post.notes.build
  end
  
  def create
    @post = Post.find(params[:post_id])
    @note = @post.notes.build(params[:note])
    redirect_to @post, notice: "Note created!"
  end
end
