class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
    @boats = @user.boats
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create (user_params)
    session[:user_id] = @user.id
    session[:job] = @job
    p @boat
  	redirect_to @user
  end


   
 end

private
def user_params
	params.require(:user).permit(:name, :username, :password)
end




