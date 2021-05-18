Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # index
  get 'tasks', to: 'tasks#index'
  # new
  get 'tasks/new', to: 'tasks#new'
  # create
  post 'tasks', to: 'tasks#create'
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # update
  patch 'tasks/:id', to: 'tasks#update'
  # show
  get 'tasks/:id', to:'tasks#show', as: :task
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
