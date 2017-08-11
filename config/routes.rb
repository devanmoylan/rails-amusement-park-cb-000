Rails.application.routes.draw do

  get 'attractions/show'

  get 'attractions/index'

  get 'attractions/edit'

  get 'attractions/new'

  resources :users

  get 'welcome/home'

  get '/signin' => 'sessions#new'

  post '/signin' => 'sessions#create'

  post '/sign_out' => 'sessions#destroy', as: 'signout'

  root 'welcome#home'


end

