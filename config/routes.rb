Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Overview of all tasks
  get 'tasks', to: 'tasks#index'

  # Read(one) task (READ)
  get 'task/:id', to: 'tasks#task'

  # Add(one) task (CREATE)
  get 'tasks/add', to: 'tasks#add'
  post 'tasks', to: 'tasks#upload'

  # Update(one) task (UPDATE)
  get 'task/:id/edit', to: 'tasks#edit', as: :edit
  patch 'task/:id', to: 'tasks#update', as: :update

  # Destroy(one) task (DELETE)
  get 'task/:id/destroy', to: 'tasks#destroy', as: :destroy
end
