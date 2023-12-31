Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :animals, only: [:show] do
    resources :markers, only: %i[new create]
    member do
      get :webcam
    end
  end

  resources :markers, only: %i[destroy]
end
