Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home", as: :home

  get "new", to: "pages#new", as: :new
end
