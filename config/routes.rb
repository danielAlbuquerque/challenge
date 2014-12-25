Rails.application.routes.draw do
  
  
  get 'teste/index'

  get 'teste/show'

  get 'tags/create'

  get 'tinymce_assets/create'

  resources :posts

  resources :categories

  resources :tags

  match 'home', controller: 'home', action: 'index', via: 'get'

  get 'home/index'

  devise_for :users
  root 'posts#index'

  post '/tinymce_assets' => 'tinymce_assets#create'


end
