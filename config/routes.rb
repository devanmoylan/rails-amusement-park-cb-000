Rails.application.routes.draw do

  resources :users

  get 'welcome/home'

  get '/signin' => 'sessions#new'

  post '/signin' => 'sessions#create'

  post '/sign_out' => 'sessions#destroy'

  root 'welcome#home'

end

