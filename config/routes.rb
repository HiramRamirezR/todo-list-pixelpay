Rails.application.routes.draw do
  get 'tasks/new'
  devise_for :users
  root to: "pages#home", as: :home

  # get "lists", to: "lists#index", as: :index
  # get "lists/new", to: "lists#new", as: :new
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show", as: :list
  # get "lists/:id/edit", to: "lists#edit", as: :edit
  # patch "lists/:id", to: "lists#update"
  # delete "lists/:id", to: "lists#destroy"

  # get "lists/:id/tasks/new", to: "tasks#new", as: :task_new
  # post "lists/:id/tasks", to: "tasks#create", as: :task_create

  resources :lists do
    resources :tasks, only: [:index, :new, :create]
  end
  resources :tasks, only: [:show, :edit, :update, :destroy]
end
