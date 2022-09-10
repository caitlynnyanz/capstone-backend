Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  ###Users
  post "/users" => "users#create"

  ###Sessions
  post "/sessions" => "sessions#create"

  ###Habits

  # get "/habits" => "habits#index"
  # get "/habits/:id" => "habits#show"
  # post "/habits" => "habits#create"
  # patch "/habits/:id" => "habits#update"
  # delete "/habits/:id" => "habits#destroy"

  root "habits#index"
  ## re-directs if only given "/"

  resources :habits

  ###Goals
  resources :goals

  ###Tasks
  resources :tasks

  ###Weekly Goals
  get "/weekly_goals" => "goals#weekly_goals"

  ###Events
  resources :events

  ###Journals
  resources :journals

  ###Active Tasks
  get "/active_tasks" => "tasks#active_tasks"
end
