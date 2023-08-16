Rails.application.routes.draw do

  root 'users#welcome'
  post '/logout', to: 'users#logout'

   # root "users#sign_in"

   post '/login', to: 'users#login'
   get '/welcome', to: 'users#welcome'

   get '/search/job', to: 'seekers#search_job'
  get '/view/job', to: 'seekers#view_jobs'
  post '/apply/job/:job_id', to: 'seekers#apply_for_job'
  get '/view/applied/jobs', to: 'seekers#view_applied_jobs'

  resources :seekers
       get '/view_job/:id', to: 'recruiters#view_all_jobs'

  resources :recruiters

     post 'jobs/create/job', to: 'jobs#create_jobs'
     post 'jobs/view/job', to: 'jobs#view_all_jobs'
     # put 'jobs/update/job/:id', to: 'jobs#job_update'
     delete 'jobs/delete/job/:id', to: 'jobs#job_delete'
     get 'jobs/view/job/applications', to: 'jobs#view_job_applications'
     patch 'jobs/approve/job/applications', to: 'jobs#approve_job_applications'
     get 'jobs/view/approved/job/applications', to: 'jobs#view_approved_job_applications'
     patch 'jobs/reject/job/applications', to: 'jobs#reject_job_applications'
     get 'jobs/view/rejected/job/applications', to: 'jobs#view_rejected_job_applications'

  resources :job_applications
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
