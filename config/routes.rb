Rails.application.routes.draw do
  root 'pages#home'

  get '/sign_in' => 'sessions#new', as: 'sign_in'
  post '/sign_in' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: 'sign_out'
  get '/result/:code' => 'students#view_result', as: 'view_result'
  get '/handle/:code' => 'teachers#view_subject', as: 'view_subject'
  get '/edit_result/:name' => 'studies#edit_result', as: 'edit_result'
  post '/registrations/accept' => 'registrations#accept', as: 'accept_registration'
  post '/registrations/reject' => 'registrations#reject', as: 'reject_registration'

  resources :teachers
  resources :students
  resources :subjects
  resources :studies
  resources :registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
