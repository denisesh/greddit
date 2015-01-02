class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
   	

  private

  def post_params
  	params.require(:post).permit(
  	  :title,
  	  :description,
  	  :user_id,
  	  )
  	
  end
end