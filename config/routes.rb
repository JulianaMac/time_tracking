Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'geofences#index'
  resources :geofences
  resources :time_trackings

end
