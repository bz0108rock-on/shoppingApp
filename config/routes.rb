Rails.application.routes.draw do
  root to: 'users#index'
  resources :mypage, only: [:index]

  resources :users, only: [:new]

  resources :products do
  end

end
