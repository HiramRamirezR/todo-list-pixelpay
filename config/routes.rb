Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home", as: :home

  get "new", to: "pages#new", as: :new
  get "lists", to: "pages#index"
  get "lists/:id", to: "pages#show"
end
