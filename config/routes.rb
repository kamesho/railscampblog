Rails.application.routes.draw do
  devise_for :users
  get 'pages/show'
  root 'pages#index'
  resource :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
