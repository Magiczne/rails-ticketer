Rails.application.routes.draw do
  root :to => "tickets#index"

  get 'events/index'
  get 'events/new'
  post 'events/create'
  get 'events/:id' => 'events#show'

  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
