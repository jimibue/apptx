class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
    @doctors = Doctor.where(specialty: @patient.condition)
  end
end
