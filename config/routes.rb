Rails.application.routes.draw do
  root "task_lists#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "about"  =>  "about#about"
  # get "create_list"  => "task_lists#show"
  # post "create_list" => "task_lists#create_list"
  # get "edit/:id" => "task_lists#edit"
  # put "edit/:id" => "task_lists#update"
  # put "create_task/:id" => "task_lists#add_task_page"

  resources :task_lists do
    resources :task
  end


end

#about to create another put for create_task/:id; rails thought that the last show was a put because I passed
#a parameter task_list_id with the get.  I need to create another put to create the task and display it.  you have
#this info: id, name, task_list_id. you need to add a date as well.