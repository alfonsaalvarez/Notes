Rails.application.routes.draw do
  resources :belongs_to_collections
  resources :friendships
get 'friendships/new'
get 'friendships/create'
get 'friendships/destroy'

get 'images/index'
get 'images/new'
get 'images/show'

  resources :note_collections
get 'note_collections/new'
get 'note_collections/create'
get 'note_collections/destroy'
get 'note_collections/addnote'

  resources :belongs_to_collection
get 'belongs_to_collection/new'
get 'belongs_to_collection/create'
get 'belongs_to_collection/destroy'
  #resources :notes
  #resources :users

  get "logout" => "session#destroy", :as => "logout"
  get "login" => "session#new", :as => "login"
  post "login" => "session#create"
  get "signup" => "users#new", :as => "signup"
  post 'images' => 'images#create'
  resources :users

  resources :session
 get 'session/new'
 get 'session/create'
 get 'session/destroy'
 get 'session/show'
  resources :notes
  #root :to => "notes#index"
  root :to => "session#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
