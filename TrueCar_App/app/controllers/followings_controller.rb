class FollowingsController < ApplicationController
  def index
  	@followings = Following.all
  end

  def new
  	@following = Following.new
  end

  def create
  	@following = Following.new(following_params)
  	if @following.save
  		redirect_to followings_path, :notice => "Following has been created"
  	else
  		render "new"
  	end
  end

  def following_params
      params.require(:following).permit(:user_id, :leader_id)
  end
end
