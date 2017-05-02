Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cocktails#index'
  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  # for my try
  # get 'doses/new2', to: 'dose#new2'
end
