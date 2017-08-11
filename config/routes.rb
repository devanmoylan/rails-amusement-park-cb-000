Rails.application.routes.draw do

  resources :users, :attractions

  get 'welcome/home'

  get '/signin' => 'sessions#new'

  post '/signin' => 'sessions#create'

  post '/sign_out' => 'sessions#destroy', as: 'signout'

  root 'welcome#home'


end

