Rails.application.routes.draw do
  get 'dogs/index'
  get 'dogs/create'
  resources :dogs, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
