Rails.application.routes.draw do
  root 'pages#home'

  get '/sign_in' => 'sessions#new', as: 'sign_in'
  post '/sign_in' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: 'sign_out'
  get '/result/:code' => 'students#view_result', as: 'view_result'

  resources :teachers
  resources :students
  resources :subjects
  resources :studies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
