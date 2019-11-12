Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# read all
  get 'tasks', to: 'tasks#index'

# read 1
  get 'tasks/:id', to: 'tasks#show', as: :task

# create
## get method
  get '/new', to: 'tasks#new', as: :new
## post
  post 'tasks', to: 'tasks#create'

# update
## get
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
## post
  patch 'tasks/:id', to: 'tasks#update'

# delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
