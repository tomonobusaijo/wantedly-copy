Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'projects#index'
  # unauthenticated do   # ログインしていない場合のルーティング(コントローラー指定)／asでPrefixを定義
  #   root "devise/sessions#new", as: 'unauthenticated_root'
  # end

  resources :users
  resources :projects
end
