Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "new", to: "pages#new"
end
