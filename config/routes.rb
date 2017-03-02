Rails.application.routes.draw do

  get 'parks/index'
  get 'parks/:id', to: 'parks#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :parks
  root "parks#index"

end
