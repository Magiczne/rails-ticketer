Rails.application.routes.draw do
  root 'home#index'

  resources :events, :only => [:index, :new, :create, :show]
  resources :tickets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
