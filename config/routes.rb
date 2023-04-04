Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/auth/:provider/callback', to: 'sessions#create'
  # get '/logout', to: 'sessions#destroy'
  # resources :dummy, only: :index
  # root "dummy#index"

  namespace :api do
    namespace :v1 do
      resources :dummy, only: :index
      resources :institutes, only: %i[index create ]
      resources :users, only: %i[index show update create] do
        collection do
        end
      end
    end
  end
end