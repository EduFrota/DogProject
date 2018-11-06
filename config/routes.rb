Rails.application.routes.draw do
  resources :dogs
  devise_for :users
  get 'alldogs', to: 'dogs#alldogs'
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
