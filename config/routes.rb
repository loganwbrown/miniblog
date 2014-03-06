Miniblog::Application.routes.draw do
  resources :users, only: [:new, :create]
  resources :articles, only: [:index, :show] do
    resources :comments
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'articles#index'

  get '/about' => 'static#about' 
  get '/search' => 'search#results'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  
  delete '/logout' => 'session#logout'



end
