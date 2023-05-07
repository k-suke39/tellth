Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  root :to => 'home#top'
  #Users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'users#login_form'
  post '/login' => 'users#login'
  post '/logout' => 'users#logout'
  get  '/users/index' => 'users#index'

  resources :posts
end
