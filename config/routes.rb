Rails.application.routes.draw do

  root to: 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/lists', to: 'lists#index', as: 'lists'
  get '/lists/new', to: 'lists#new', as: 'new_list'
  get '/lists/:id', to: 'lists#show', as: 'list'
  post '/lists', to: 'lists#create'
  delete '/lists/:id', to: 'lists#destroy'

  get '/lists/:list_id/bookmarks', to: 'bookmarks#index', as: 'bookmarks'
  get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
  get '/bookmarks/:id', to: 'bookmark#show', as: 'bookmark'
  post '/lists/:list_id/bookmarks', to: 'bookmarks#create'
  delete '/bookmarks/:id', to: 'bookmarks#destroy', as: 'delete'
end
