Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about' => 'homes#about'

  devise_for :users

  resources :posts do
    resource :favorite, only: [:create, :destroy]# ネストしてFKのpost_idを取得しやすくする
    resources :comments, only: [:create, :destroy]
  end

  resources :users

end
