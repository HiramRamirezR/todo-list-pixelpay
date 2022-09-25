Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home", as: :home

  get "lists", to: "pages#index"
  get "lists/new", to: "pages#new", as: :new
  post "lists", to: "pages#create"
  get "lists/:id", to: "pages#show", as: :list
  get "lists/:id/edit", to: "pages#edit"
end
