Rails.application.routes.draw do
  get 'doctor_sessions/new'

  get 'receptionist_sessions/new'

  get 'signup_doctor', to: 'doctors#new'
  get 'signup_receptionist', to: 'receptionists#new'
  get 'home_page/home'
  root "home_page#home"
  resources :prescribtion_details
  resources :prescribtions
  resources :medications
  resources :appointments
  resources :receptionists
  resources :doctors
  resources :specialties
  resources :patients

  get 'login_receptionist' => 'receptionist_sessions#new'
  post 'login_receptionist' =>'receptionist_sessions#create'
  delete 'logout_receptionist' =>'receptionist_sessions#destroy'

  get 'login_doctor' => 'doctor_sessions#new'
  post 'login_doctor' =>'doctor_sessions#create'
  delete 'logout_doctor' =>'doctor_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
