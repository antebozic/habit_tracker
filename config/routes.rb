Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'habits#index'
  resources :habits do
    resources :occurrences
  end

  resources :categories


end
