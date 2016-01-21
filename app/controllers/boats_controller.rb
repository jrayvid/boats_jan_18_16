class BoatsController < ApplicationController
def new
	@user = current_user
	@boat = Boat.new
end
def create
	@user = current_user
	@boat = Boat.create(boat_params)
	redirect_to @user
end
def job
	@boat = Boat.current
end

def edit
	@user = current_user
	@boat = Boat.where(user_id:@user.id).first
end
def update
	@user = current_user
	@boat = Boat.find(params[:id])
	@boat.update(boat_params)

	redirect_to @user
end

def destroy
	@boat = Boat.find(params[:id])
	@boat.destroy
	redirect_to user_path
end
def show
	
end

private
def boat_params
	params.require(:boat).permit(:name, :containers, :location).merge(user_id: @user.id)

end

end
