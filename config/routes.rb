Rails.application.routes.draw do
  root to: 'products#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/admins' => 'admins#index'
  get '/admin_signup' => 'admins#new'
  post '/admins' => 'admins#create'

  get '/admin_signin' => 'admin_sessions#new'
  post '/admin_signin' => 'admin_sessions#create'
  get '/admin_signout' => 'admin_sessions#destroy'

  resources :products do
    resources :reviews, except: [:show, :index]
  end
end
