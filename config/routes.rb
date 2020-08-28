Rails.application.routes.draw do
  root "home#index"

  get "patients/:id", to: "patients#show", as: "patient"

  get "patients/:patient_id/doctor/:doctor_id/appointments/new", to: "appointments#new", as: "new_appointment"

  post "patients/:patient_id/doctor/:doctor_id/appointments", to: "appointments#create", as: "patient_doctor"

  # #TODO this is hack fix this later
  # patch "patients/:patient_id/doctor/:doctor_id/appointment", to: "appointments#create"

  # /patients/1/doctor/5/appointments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
end
