class SeekersController < ApplicationController
  def index
    @seekers = Seeker.all
    # @seeker = Seeker.find(user_id: @current_user.id)
    @jobs = Job.all
  end

  def new
    @seeker = Seeker.new
  end

  def create
    @seeker = Seeker.create(seeker_params)
    if @seeker.save
      redirect_to @seeker
    else
      render :new
    end
  end

  def show
    @seeker = @current_user
  end

  def edit
    @seeker = Seeker.find(params[:id])
  end

  def update
    # @current_user.update(seeker_params)
    @seeker = Seeker.find(params[:id])
    if @seeker.update(seeker_params)
      redirect_to @seeker
    else
      render :edit
    end
  end

  def search_job
    @job = Job.where("title LIKE '%#{params[:title].strip}%'")
  end

  def apply_for_job
    @seeker = @current_user.job_applications.new(job_id: params[:id], status: 'applied')
    return unless @seeker.save

    flash[:notice] = 'applied successfully  '
    redirect_to seekers_path
  end

  def view_applied_jobs
    @applied_jobs = @current_user.job_applications
    @arr = []
    @applied_jobs.each do |job|
      a = Job.find(job.job_id)
      @arr.push(a)
    end
  end

  private

  def seeker_params
    params.require(:seeker).permit(:name, :email, :password, :age,
                                   :qualification, :experience)
  end
end
