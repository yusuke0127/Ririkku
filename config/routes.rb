Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :artists do
    resources :songs, only: [ :index, :new, :create ]
  end
  resources :songs, only: [ :show ]
  get 'song_list', to: 'songs#song_list', as: :song_list
end
