class PostsController < ApplicationController
  def edit
  end

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to posts_path, :notice => "Post has been created under given user"
  	else
  		render "new"
  	end
  end

  def show
  end


  def post_params
      params.require(:post).permit(:url, :caption, :user_id)
  end
end
