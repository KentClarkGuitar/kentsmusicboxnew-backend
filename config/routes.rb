Rails.application.routes.draw do
  
    # post '/songs/:id/favorites', to: 'favorites#create'
    # delete '/songs/:id/favorites', to: 'favorites#destroy'

    # all routes
    scope '/api' do 
      resources :users

      post 'users/signup', to: 'users#create'

      post 'users/login', to: 'sessions#create'
    end
  
end
