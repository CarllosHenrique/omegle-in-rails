Rails.application.routes.draw do
  root 'users#new'
  resources :users

  resources :messages

  get '/chat', to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
