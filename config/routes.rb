Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "buildings#index"

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'

  resources :users
  resources :buildings do
    resources :stories do
      resources :photos, shallow: true
    end
  end

end
