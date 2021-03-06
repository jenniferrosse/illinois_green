Rails.application.routes.draw do

  resources :partners
  resources :project_partners
  resources :project_types
  root 'projects#index'

  resources :projects do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
