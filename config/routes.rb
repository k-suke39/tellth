Rails.application.routes.draw do
  root :to => 'home#top'
  #Users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get  '/users/index' => 'users#index'
end
