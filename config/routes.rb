Rails.application.routes.draw do
  root "task_lists#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "about"  =>  "about#about"
  get "create_list"  => "task_lists#show"
  post "create_list" => "task_lists#create_list"
  get "edit" => "task_lists#"
end
