Rails.application.routes.draw do
  get 'frames/index'
  get 'user_bikes/index'
  devise_for :users
  root 'bikes#index'
  resources :bikes
  get '/bikes/:bike_id', to: 'bikes#addframe', as: 'addframe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
