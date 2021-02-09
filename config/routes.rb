Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 1) As a user I can list tasks
  get "/tasks", to: "tasks#index"

  # 3) As a user I can add a new task (1/2)
  get "/tasks/new", to: "tasks#new"

  # 2) As a user I can view the details of a task
  get "/tasks/:id", to: "tasks#show", as: :task

  # 5) As a user I can remove a task
  delete "tasks/:id", to: "tasks#destroy"

  # 3) As a user I can add a new task (2/2)
  post "/tasks", to: "tasks#create"

  # 4) As a user I can edit a task
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#update"
end
