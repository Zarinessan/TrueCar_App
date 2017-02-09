class PostsController < ApplicationController
  def edit
  end

  def index
  	@posts = Post.all
  end

  def new
  end

  def show
  end
end
