Rails.application.routes.draw do

  get 'sessions/new'
  root to: 'users#index'
  get 'signup', to: 'users#new'
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get '*path' => redirect { |p, req| req.flash[:error] = "Bien tenté mais pour voir le secret log toi 😉"; '/login' }


end
