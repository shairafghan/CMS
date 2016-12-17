Rails.application.routes.draw do
  get 'home_page/home'

  root "receptionists#index"
  resources :prescribtion_details
  resources :prescribtions
  resources :medications
  resources :appointments
  resources :receptionists
  resources :doctors
  resources :specialties
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
