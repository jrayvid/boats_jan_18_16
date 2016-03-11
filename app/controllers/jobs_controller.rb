class JobsController < ApplicationController


	def new
		@boat = Boat.find(params[:boat_id])
		@job = Job.new
	end

	def create
		@boat = Boat.find(params[:boat_id])
		@job = Job.create(jobs_params)
	  	redirect_to boat_job_path(@boat.id, @job.id)
	end
	
	def show
		@job = Job.find(params[:id])
		@jobs = Job.all
		@user = User.find(@job.user_id)
	end
	
	def index
		@user = current_user
	end

	def destroy
		@job = Job.find(params[:id])
		@user = User.find(@job.user_id)
		@job.destroy
		redirect_to user_path(@user.id)
	end	

	
	
private
def jobs_params
	params.require(:job).permit(:new, :name, :origin, :destination, :cargo, :containers, :price).merge(boat_id: @boat.id, user_id: current_user.id)
end
	
end


