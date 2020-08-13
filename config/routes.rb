Rails.application.routes.draw do
  resources :users
  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/sessions/:id' => 'sessions#destroy'

  get '/users' => 'users#new'

  get '/welcome' => 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
