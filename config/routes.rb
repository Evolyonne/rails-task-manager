Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index" # see all

  get "tasks/new", to: "tasks#new" # new
  post "tasks", to: "tasks#create" # new

  delete "tasks/:id", to: "tasks#destroy"

  get "tasks/:id", to: "tasks#show", as: :task # see detail one task

  get "tasks/:id/edit", to: "tasks#edit", as: :edit # edit
  patch "tasks/:id", to: "tasks#update" # edit
end
