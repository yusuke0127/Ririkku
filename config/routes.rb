Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :artists do
    resources :songs, only: [ :new, :create ]
  end
end
