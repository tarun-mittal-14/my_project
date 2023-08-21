 class JobApplicationsController < ApplicationController
  # before_action :set_job, only: [:update, :approve_job_applications, :reject_job_applications, :job_delete]

  def index
  end

  def show
  end

  def new 
    @job = Job.new
  end

  def create
    @job = @current_user.jobs.new(job_params)
    if @job.save
      redirect_to recruiters_path
    else
      render :new
    end
  end


def edit
  byebug
    @job = @current_user.jobs.find_by(id: params[:id])

  end

  def update
    @job = @current_user.jobs.find_by(id: params[:id])
    if @job.update(job_params)
      redirect_to recruiters_path
    else
      render :edit
    end
  end

  def destroy
    @job = @current_user.jobs.find(params[:id])
    @job.destroy
  end

  private

  # def set_job
  #   @job = @current_user.jobs.find(params[:id])
  # end

  def job_params
    params.require(:job).permit(:title, :description,  :requirement ,:location)
  end
end

