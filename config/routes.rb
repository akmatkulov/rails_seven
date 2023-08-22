Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"
  get '/' => 'articles#index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  
  #вложенный маршрут
  resources :articles do
    resources :comments
  end
end
