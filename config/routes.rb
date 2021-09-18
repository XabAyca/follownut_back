Rails.application.routes.draw do

  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :patients, only: %i[show index update destroy]
      resources :nutritionists, only: %i[show index update destroy]
      resources :appointments
      resources :logbooks, only: %i[show index update destroy]
    end
  end

  devise_for :patients,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/patient/login',
      sign_out: 'api/patient/logout',
      registration: 'api/patient/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

  devise_for :nutritionists,
  defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'api/nutritionist/login',
    sign_out: 'api/nutritionist/logout',
    registration: 'api/nutritionist/signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  post 'api/patient/password/forgot', to: 'patient_passwords#forgot'
  post 'api/patient/password/reset', to: 'patient_passwords#reset'
  post 'api/nutritionist/password/forgot', to: 'nutritionist_passwords#forgot'
  post 'api/nutritionist/password/reset', to: 'nutritionist_passwords#reset'

end
