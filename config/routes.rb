Rails.application.routes.draw do

  root 'home#top'

  get 'about' => 'home#about'
  get 'posts/index' => 'posts#index'
  get 'posts/id' => 'posts#show'
  get 'posts/new' => 'posts#new'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/create' => 'posts#create'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  get 'signup' => 'users#new'

  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  post 'users/create' => 'users#create'
  post 'users/:id/update' => 'users#update'
  get 'users/:id/likes' => 'users#likes'

  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

end
