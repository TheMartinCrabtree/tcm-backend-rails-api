Rails.application.routes.draw do
  resources :shoppingcartjoins
  resources :orderjoins
  resources :orders
  resources :users
  resources :items
  
  resources :shoppingcarts
  # get '/shoppingcart/:id/contents', to: 'shoppingcart#contents'
  get '/shoppingcart/:id/contents', to: 'shoppingcart#contents', as: 'contents'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
