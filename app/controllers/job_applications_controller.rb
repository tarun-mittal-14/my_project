class JobApplicationsController < ApplicationController
  before_action :set_job, only: [:update, :approve_job_applications, :reject_job_applications, :job_delete]

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
      redirect_to job_path(@job)
    else
      flash[:error] = @job.errors.full_messages.join(', ')
      render :new
    end
  end

  def view_all_jobs
    @jobs = @current_user.jobs
  end

  def update
    if @job.update(job_params)
      redirect_to job_path(@job)
    else
      flash[:error] = @job.errors.full_messages.join(', ')
      render :edit
    end
  end


 # def view_job_applications
 #  @applied_jobs = JobSeeker.where(job_id: @current_user.jobs.ids)
 #    render: @applied_jobs
 #  end

def approve_job_applications
  job_seeker = @job.job_seekers.find_by(id: params[:id])
  if job_seeker.present?
    job_seeker.approved!
    flash[:notice] = 'Job application approved successfully.'
    redirect_to job_path(@job)
  else
    flash[:error] = 'You are not the owner of this job'
    redirect_back(fallback_location: root_path)
  end
end

def reject_job_applications
  job_seeker = @job.job_seekers.find_by(id: params[:id])
  if job_seeker.present?
    job_seeker.rejected!
    flash[:notice] = 'Job application rejected successfully.'
    redirect_to job_path(@job)
  else
    flash[:error] = 'You are not the owner of this job'
    redirect_back(fallback_location: root_path)
  end
end

def view_approved_job_applications
  @approved_job_seekers = JobSeeker.approved
end

def view_rejected_job_applications
  @rejected_job_seekers = JobSeeker.rejected
end

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

