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
