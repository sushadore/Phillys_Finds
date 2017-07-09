Rails.application.routes.draw do
  root to: 'products#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/admin_signup' => 'admins#new'
  get '/admin_signup' => 'admins#create'

  resources :products do
    resources :reviews, except: [:show, :index]
  end
end
