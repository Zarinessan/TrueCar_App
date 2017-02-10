class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to users_path, :notice => "Post has been created under given user"
  	else
  		render "new"
  	end
  end

  def new
  	@user = User.new
  end

  def user_params
  	params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
