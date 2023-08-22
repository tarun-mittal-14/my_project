class RecruitersController < ApplicationController
  # before_action :set_recruiter, only: [:show, :edit, :update]

  def index
    @recruiters = Recruiter.all
    @jobs = Job.all
  end

  def new
    @recruiter = Recruiter.new
  end

  def create
    @recruiter = Recruiter.new(recruiter_params)
    if @recruiter.save
      redirect_to root_path, notice: 'Recruiter was successfully created.'
    else
      render :new
    end
  end

  def view_job_applications
    @applied_jobs = JobApplication.where(job_id: @current_user.jobs.ids)
  end

  def show
    @recruiter = @current_user
  end

  def edit
    @recruiter = Recruiter.find(params[:id])
  end

  def update
    @recruiter = Recruiter.find(params[:id])
    if @recruiter.update(recruiter_params)
      redirect_to @recruiter
    else
      render :edit
    end
  end

  def view_all_jobs
    @j = @current_user.jobs
  end

  def approve_job_applications
    # <li><%= link_to "Apply","/apply/job/#{job.id}" %>
    # @seeker = @current_user.job_applications.new(job_id: params[:id], status: 'applied')

    @approve_jobs = @current_user.jobs.find_by(id: params[:job_id]).job_applications.find_by(params[:id])
    return unless @approve_jobs.present?
    @approve_jobs.approved!
    # redirect_to  @approve_jobs
  end

  def view_approved_job_applications
    @view_approved = JobApplication.approved
  end

  def reject_job_applications
    @reject_jobs = @current_user.jobs.find_by(id: params[:job_id]).job_applications.find_by(params[:id])
    return unless @reject_jobs.present?

    @reject_jobs.rejected!
    # redirect_to  @reject_jobs
  end

  def view_rejected_job_applications
    @view_rejected = JobApplication.rejected
  end

  private

  def set_recruiter
    @current_user = Recruiter.find(params[:id])
  end

  def recruiter_params
    params.require(:recruiter).permit(:name, :email, :password, :age,
                                      :qualification, :experience)
  end
end
