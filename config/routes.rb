# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#welcome'
  post '/logout', to: 'users#logout'
  post '/login', to: 'users#login'
  get '/welcome', to: 'users#welcome'
  resources :job_applications

  # ---------------------------------------------
  get '/search/job', to: 'seekers#search_job'
  get '/view/job', to: 'seekers#view_jobs'
  get '/apply/job/:id', to: 'seekers#apply_for_job'
  get '/view/applied/jobs', to: 'seekers#view_applied_jobs'
  resources :seekers
  #---------------------------------------------------------------------------------

  get '/view/job/applications', to: 'recruiters#view_job_applications'
  get '/view_job/:id', to: 'recruiters#view_all_jobs'
  patch '/approve/job/:id', to: 'recruiters#approve_job_applications'
  # patch '/approve/job/applications', to: 'recruiters#approve_job_applications'
  get '/view/approved/job/applications', to: 'recruiters#view_approved_job_applications'
  patch '/reject/job/applications', to: 'recruiters#reject_job_applications'
  get '/view/rejected/job/applications', to: 'recruiters#view_rejected_job_applications'
  resources :recruiters
end
