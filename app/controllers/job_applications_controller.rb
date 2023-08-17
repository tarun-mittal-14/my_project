 class JobApplicationsController < ApplicationController
  # before_action :set_job, only: [:update, :approve_job_applications, :reject_job_applications, :job_delete]

  def index
  end

  def show
  end

  def new 
  end

  def edit 
  end
  
  def create_jobs
    @job = @current_user.jobs.new(job_params)
    if @job.save
      redirect_to @job
    else
      render :new
    end
  end

  def update

    @job = @current_user.jobs.find(params[:id])
    @job.update(job_params)
    redirect_to  @job
   redirect_to job_path(@job)
    else
      render :edit
    end
  end


 def view_job_applications
  @applied_jobs = JobApplication.where(job_id: @current_user.jobs.ids)
  end

# def approve_job_applications
#   job_seeker = @job.job_applications.find_by(id: params[:id])
#   if job_seeker.present?
#     job_seeker.approved!
#     flash[:notice] = 'Job application approved successfully.'
#     redirect_to job_path(@job)
#   else
#     flash[:error] = 'You are not the owner of this job'
#   end
# end

# def reject_job_applications
#   job_seeker = @job.job_applications.find_by(id: params[:id])
#   if job_seeker.present?
#     job_seeker.rejected!
#     flash[:notice] = 'Job application rejected successfully.'
#     redirect_to job_path(@job)
#   else
#     flash[:error] = 'You are not the owner of this job'
#   end
# end

# def view_approved_job_applications
#   @approved_job_seekers = JobApplication.approved
# end

# def view_rejected_job_applications
#   @rejected_job_seekers = JobApplication.rejected
# end

# def job_delete
#   job = @current_user.jobs.find(params[:id])
#   job.destroy
#   render json: { message: 'Job has been deleted' }
  # end

  private

  def set_job
    @job = @current_user.jobs.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :location, :requirement, :user_id)
  end
end

