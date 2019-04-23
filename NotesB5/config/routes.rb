Rails.application.routes.draw do
  resources :belongs_to_collections
  resources :friendships
  get 'images/index'
  get 'images/new'
  get 'images/show'
  resources :note_collections
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'session/show'
  #resources :notes
  #resources :users

  get "logout" => "session#destroy", :as => "logout"
  get "login" => "session#new", :as => "login"
  post "login" => "session#create"
  get "signup" => "users#new", :as => "signup"
  post 'images' => 'images#create'
  resources :users
  resources :session
  resources :notes
  #root :to => "notes#index"
  root :to => "session#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
