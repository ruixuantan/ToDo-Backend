Rails.application.routes.draw do

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  namespace :api do
    namespace :v1 do
      resources :tasks, only: [:index, :create, :show, :update, :destroy]
      resources :tags, only: [:index, :create, :show, :update, :destroy]
    end
  end

  get "tasks/create", to: "hello_world#home";
  get "tasks/:id/update", to: "hello_world#home";
  get "tasks/:id", to: "hello_world#home";
  get "tags/create", to: "hello_world#home";

  root "hello_world#home"
end
