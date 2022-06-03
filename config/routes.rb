Rails.application.routes.draw do
  # se agrega ruta get para borrar una sesion o delete o matar sesion
  get 'sessions/destroy'
  

  resources :sessions, only: [:new, :create, :destroy]
  root "home#index"
end
