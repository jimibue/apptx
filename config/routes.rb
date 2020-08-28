Rails.application.routes.draw do
  root "home#index"

  get "patients/:id", to: "patients#show", as: "patient"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
end
