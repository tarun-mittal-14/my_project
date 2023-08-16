class RecruitersController < ApplicationController
  before_action :set_recruiter, only: [:show, :edit, :update]

  def index
    @jobs = Job.all
  end 

  def new
    @recruiter = Recruiter.new
  end

  def create
    @recruiter = Recruiter.new(recruiter_params)
    if @recruiter.save
      redirect_to @recruiter, notice: 'Recruiter was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @current_user.update(recruiter_params)
      redirect_to @current_user, notice: 'Recruiter was successfully updated.'
    else
      render :edit
    end
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
