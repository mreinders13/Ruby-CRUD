Rails.application.routes.draw do
  get 'hello/index'

  resources :students

  root 'hello#index'
end
