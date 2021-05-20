Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes, only: [:index, :show] do
    resources :bookings, except: :destroy
  end

  namespace :owner do
    resources :bikes
    resources :bookings, only: [:index, :update, :show]
  end
end
