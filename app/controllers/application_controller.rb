class ApplicationController < ActionController::Base

  include JsonWebToken

  before_action :authenticate_user

  private
  def authenticate_user
    decoded = jwt_decode(session[:current_user].split(' ').last)
    @current_user = User.find_by_email(decoded[:email])
    raise unless @current_user.present?
  rescue StandardError
    flash[:notice] = 'You are not authorized(Login First)'
    redirect_to root_path
  end

end
