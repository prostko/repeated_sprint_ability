Rails.application.routes.draw do
  resources :tags
  resources :principals
  resources :tickets
  resources :sprints
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
