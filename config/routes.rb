Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
  }

  namespace :admin do 
    resources :job_categories
    resources :jobs
    get 'my_jobs' , :to => 'jobs#my_jobs' 
  end
  
  root 'welcome#index'
  resources :users, only: [:show]
  resources :user_plan , only: [:index, :show]
  resources :plans
  get '/add_user_plan', to: 'plans#add_user_plan' 


end
