Rails.application.routes.draw do
  get 'favorites/update'
  resources :dogs

  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: "users/sessions", passwords: 'users/passwords' } do
     get "/", :to => "users/sessions#create"
   end

   authenticated :user do
     root to: "dogs#mydogs"
   end

   unauthenticated :user do
     devise_scope :user do
       get "/" => "home#homepage"
     end
   end

  get 'mydogs', to: 'dogs#mydogs'
  get 'allfavorites', to: 'dogs#allfavorites'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
