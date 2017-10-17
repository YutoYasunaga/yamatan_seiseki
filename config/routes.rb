Rails.application.routes.draw do
  root 'pages#home'

  get '/sign_in' => 'sessions#new', as: 'sign_in'
  post '/sign_in' => 'sessions#create'
  get '/sign_out' => 'sessions#destroy', as: 'sign_out'

  get '/student_account_setting/:code' => 'students#account_setting', as: 'student_account_setting'
  put '/student_account_update' => 'students#account_update', as: 'student_account_update'
  get '/teacher_account_setting/:code' => 'teachers#account_setting', as: 'teacher_account_setting'
  put '/teacher_account_update' => 'teachers#account_update', as: 'teacher_account_update'

  get '/result/:code' => 'studies#index', as: 'view_result'
  get '/handle/:code' => 'teachers#view_subject', as: 'view_subject'

  get '/edit_results/:name' => 'studies#edit_results', as: 'edit_results'
  put '/update_results/:name' => 'studies#update_results', as: 'update_results'

  post '/registrations/accept' => 'registrations#accept', as: 'accept_registration'
  post '/registrations/reject' => 'registrations#reject', as: 'reject_registration'

  get '/registrations/manage' => 'registrations#manage', as: 'manage_registration'
  post '/settings/change_registration_status/:status' => 'settings#change_registration_status', as: 'change_registration_status'

  resources :teachers
  resources :students
  resources :subjects
  resources :studies
  resources :registrations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
