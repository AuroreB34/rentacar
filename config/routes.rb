Rails.application.routes.draw do
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"



  get 'cars', to: 'cars#index' # Affiche la liste des voitures
  # get 'cars/new', to: 'cars#new' # Affiche le formulaire pour créer une nouvelle voiture
  # post 'cars', to: 'cars#create' # Crée une nouvelle voiture
  get 'cars/:id', to: 'cars#show', as: 'car' # Affiche les détails d'une voiture spécifique
  get 'cars/:id/edit', to: 'cars#edit', as: 'edit_car' # Affiche le formulaire pour modifier une voiture
  patch 'cars/:id', to: 'cars#update' # Met à jour une voiture spécifique
  delete 'cars/:id', to: 'cars#destroy' # Supprime une voiture spécifique

  get 'user/id', to:"user#show", as: 'user'

  resources :bookings

end
