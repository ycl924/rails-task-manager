Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create Tasks
  get 'tasks/new' => 'tasks#new'
  post 'tasks' => 'tasks#create'

  # Read tasks
  get 'tasks' => 'tasks#index'
  get 'tasks/:id' => 'tasks#show', as: :task

  # Update Tasks
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit
  patch 'tasks/:id' => 'tasks#update'

  # Delete tasks
  delete 'tasks/:id' => 'tasks#destroy'

end
