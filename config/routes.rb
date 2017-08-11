Rails.application.routes.draw do

  resources :users

  get 'welcome/home'

  get '/sign_in' => 'sessions#new'

  post '/sign_in' => 'sessions#create'

  post '/sign_out' => 'sessions#destroy'

  root 'welcome#home'

end

