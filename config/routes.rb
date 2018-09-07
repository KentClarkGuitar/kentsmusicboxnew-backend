Rails.application.routes.draw do
  
    # post '/songs/:id/favorites', to: 'favorites#create'
    # delete '/songs/:id/favorites', to: 'favorites#destroy'

    # all routes
    scope '/api' do 
      resources :users

      post 'users/signup', to: 'users#create'

      post 'users/login', to: 'sessions#create'

      get 'songs/getsongs', to: 'songs#index'

      get 'songs/:id', to: 'songs#show'
      
      get 'products/:id', to: 'products#show'

      post 'comments', to: 'comments#create'

      get 'comments/:song_id', to: 'comments#show'

      put 'comments/:comment_id', to: 'comments#update'

      delete 'comments/:comment_id', to: 'comments#delete'

    end
  
end
