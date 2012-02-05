class BusinessModelCanvasController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @blocs = Bloc.all(sort: :position)
  end
  
end
