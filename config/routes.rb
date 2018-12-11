Rails.application.routes.draw do
  get 'favorites/update'
  resources :dogs
  devise_for :users
  get 'mydogs', to: 'dogs#mydogs'
  get 'allfavorites', to: 'dogs#allfavorites'
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
