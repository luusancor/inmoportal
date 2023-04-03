Rails.application.routes.draw do
  devise_for :users
  resources :inmuebles
  root "inmuebles#index"
  # get "/inmuebles", to: "inmuebles#index"
  # get 'inmuebles/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
