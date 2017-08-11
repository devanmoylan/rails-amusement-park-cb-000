Rails.application.routes.draw do


  get 'welcome/home'

  get '/sign_in' => 'sessions#new'

  post '/sign_in' => 'sessions#create'

  post '/sign_out' => 'sessions#destroy'

  root 'welcome#home'

end

User.create(name: "pat", password: "password", password_confirmation: "password", nausea: 1, happiness: 5, tickets: 5, height: 45, admin: true)