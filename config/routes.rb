Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :patients, only: %w[show index]
      resources :nutritionists, only: %w[show index]
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

end
