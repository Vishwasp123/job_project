Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }
 
  root 'welcome#index'


  namespace :user do 
    resources :users
  end



  namespace :admin do 
  resources :job_categories
  resources :jobs
  get 'my_jobs' , :to => 'jobs#my_jobs'
  end
end
