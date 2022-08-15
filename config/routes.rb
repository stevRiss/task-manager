Rails.application.routes.draw do
  # resources :tasks, only: [:index, :show, :destroy, :create, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/tasks", to: "tasks#index"
  post '/newtask', to: "tasks#create"
  delete '/tasks/:id', to: "tasks#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
