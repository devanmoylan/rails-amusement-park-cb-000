Rails.application.routes.draw do

  get 'rides/take_ride'

  resources :users, :attractions

  get 'welcome/home'

  get '/signin' => 'sessions#new'

  post '/signin' => 'sessions#create'

  post '/sign_out' => 'sessions#destroy', as: 'signout'

  root 'welcome#home'

  post '/users/:id' => 'users#go_on_ride', as: 'go_on_ride'


end

