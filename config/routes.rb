Rails.application.routes.draw do
  get 'tasks/new'
  devise_for :users
  root to: "pages#home", as: :home

  resources :lists do
    resources :tasks, only: %i[index new create]
  end
  resources :tasks, only: %i[show edit update]

  resources :tasks, only: [:destroy], as: :destroytask

end
