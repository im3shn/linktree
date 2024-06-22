Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  }
  root 'dashboard#index'
  get 'dashboard', to:'dashboard#index'
  get 'appearance', to: 'dashboard#appearance'
  get ':id', to: 'dashboard#show', as: :user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
