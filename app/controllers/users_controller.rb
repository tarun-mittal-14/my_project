class UsersController < ApplicationController
  skip_before_action :authenticate_user

  def login
    @user = User.find_by(email: params[:email])
    # byebug
    raise if @user.nil?

    if @user.type == 'Seeker'
      session[:current_user] = jwt_encode(email: @user.email)
      redirect_to seekers_path
    elsif @user.type == 'Recruiter'
      session[:current_user] = jwt_encode(email: @user.email)
      redirect_to recruiters_path
    end
  rescue StandardError
    flash[:notice] = 'You are not authorized(Login First)'
    redirect_to root_path
    # redirect_to seekers_path
  end

  def logout
    session.delete(:current_user)
    @current_user = nil
    redirect_to root_url, status: :see_other
  end

  def welcome; end
end
