class UsersController < ApplicationController
  
  
  def show
  	@user = User.find(params[:id])
    @boats = @user.boats
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.create(user_params)
    if
    session[:user_id] = @user.id
    session[:job] = @job
    p @boat
  	redirect_to @user
  else
    redirect_to root_path
  end
  end

  def edit
  @user = User.where(params[:user_id]).first
 
  end
  def update
    @user = current_user
    @user = User.where(@user.id).first
    redirect_to @user
  end

  def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to login_path
  end

   


private
  def user_params
	params.require(:user).permit(:name, :username, :password)
  end

end


