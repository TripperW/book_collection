Rails.application.routes.draw do
  resources :books
  match "books/:id/delete", to: "books#delete", via: :get, as: 'delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
