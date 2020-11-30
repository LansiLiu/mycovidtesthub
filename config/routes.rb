Rails.application.routes.draw do

  get 'test_kit/create'
  #get '/report', to: 'test_results#new'
  #post '/report', to: 'test_results#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/dashboard', to: 'dashboards#show'
  root 'dashboards#show'
  
  post '/newkit', to: 'dashboards#add_new_test_kit'

  get '/report', to: 'test_results#new'

  get '/foobar', to: "staticpages#show"
  resources :test_results
end
