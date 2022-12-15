Rails.application.routes.draw do
  resources :ecoles

  resources :departments
  get 'etudiants/liste'
  get 'etudiants/visualiser', to: "etudiants#show"
  get 'etudiants/ajouter'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
