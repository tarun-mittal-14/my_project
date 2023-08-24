# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... <% employee.errors.full_messages_for(:name).each do |message| %>
      <div><%= message %></div>
    <% end %>
# class JobApplicationsController < ApplicationController

#   def create_jobs
#     job = @current_user.jobs.new(job_params)
#     if job.save?
#       render json: job
#     else
#       render json: job.errors.full_messages
#     end
#   end

#   def view_all_jobs
#     jobs = @current_user.jobs
#     render json: jobs
#   end

#   def update
#     job = @current_user.jobs.find(params[:id])
#     job.update(job_params)
#     render json: job
#   end

#   def view_job_applications
#     applied_jobs = JobSeeker.where(job_id: @current_user.jobs.ids)
#     render json: applied_jobs
#   end

#   def approve_job_applications
#    approve_jobs = @current_user.jobs.find_by(id: params[:job_id]).job_seekers.find_by(params[:id])
#    if approve_jobs.present?
#     approve_jobs.approved!
#     render json: approve_jobs
#   else
#     render json: {message: "You are not owner of this job"}
#   end
# end

# def view_approved_job_applications
#   view_approved = JobSeeker.approved
#   render json: view_approved
# end

# def reject_job_applications
#   reject_jobs = @current_user.jobs.find_by(id: params[:job_id]).job_seekers.find_by(params[:id])
#   if reject_jobs.present?
#     reject_jobs.rejected!
#     render json: reject_jobs
#   else
#     render json: {message: "You are not owner of this job"}
#   end
# end

# def view_rejected_job_applications
#   view_rejected = JobSeeker.rejected
#   render json: view_rejected
# end

# def job_delete
#   job = @current_user.jobs.find(params[:id])
#   job.destroy
#   render json: { message: 'Job has been deleted' }

# end

# private

# def view_all_jobs_params
#   params.permit(:user_id)
# end

# def job_params
#   params.permit(:title, :description, :location, :requirement, :user_id)
# end
# end


<!-- class ApplicationController < ActionController::Base
  include JsonWebToken
  # before_action :user_authenticate
  private
  def user_authenticate
    header = session[:current_user].split(" ").last if session[:current_user]
    decoded = jwt_decode(header)
    @current_user = User.find(decoded[:user_id])
  rescue
      render 'users/sign_in', notice: "Invalid email & password"
  end




end
 -->

 <!-- <div style="color:red"><%= flash[:notice] %></div>
<h1 style="text-align: center; color: blueviolet;"> Welcome to Portal </h1>
<%= form_with model: @user, url:"/login", method: :post do |form| %>
  <%= form.text_field :email %><br>
  <%= form.label :email %><br>
  <!-- <%= form.password_field :password %><br> -->
    <%= form.text_field :password %><br>
  <%= form.label :password %><br>
  <%= form.button "Sign in" %>
<% end %> -->

<li><%= link_to "Destroy", recruiter_path(@recruiter), data: {
                    turbo_method: :delete,
                    turbo_confirm: "Are you sure?"
                  } %></li>


</ul>

   <div>
              <p class="mb-0">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">JOB FOR YOU</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<style>
  .gradient-custom {
/* fallback for old browsers */
background: #f093fb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}


</style>

<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Sign Up Form</h3>
            <form>

            <%= form_with model: @recruiter do |form| %>
              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="firstName" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName"> Name</label>
                  </div>

                </div>
              </div>

                  <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="email" id="emailAddress" class="form-control form-control-lg" />
                    <label class="form-label" for="emailAddress">Email</label>
                  </div>

                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="password" class="form-control form-control-lg" />
                    <label class="form-label" for="lastName">password</label>
                  </div>

                </div>
              </div>
                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="tel" id="age" class="form-control form-control-lg" />
                    <label class="form-label" for="phoneNumber">age</label>
                  </div>

                </div>
              </div>

              <div class="form-outline">
                    <input type="text" id="qualification" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName"> qualification</label>
                  </div>

                  <div class="form-outline">
                    <input type="text" id="experience" class="form-control form-control-lg" />
                    <label class="form-label" for="firstName"> experience</label>
                  </div>


                <% end %>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
