Rails.application.routes.draw do
  resources :shared_collections
  resources :shared_notes
  resources :belongs_to_collections
  resources :friendships
  resources :requests
get 'friendships/new'
get 'friendships/create'
get 'friendships/destroy'

get 'note/share'
get 'images/new'
get 'images/show'

  resources :note_collections
get 'note_collections/new'
get 'note_collections/create'
get 'note_collections/destroy'
get 'note_collections/addnote'

get 'resquests/index'
get 'resquests/new'
get 'resquests/show'

  #resources :belongs_to_collection
get 'belongs_to_collections/new'
get 'belongs_to_collections/create'
get 'belongs_to_collections/destroy'
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
