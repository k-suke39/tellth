Rails.application.routes.draw do
  root :to => 'home#top'
  #Users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'users#login_form'
  post '/login' => 'users#login'
  post '/logout' => 'users#logout'
  get  '/users/index' => 'users#index'
end
