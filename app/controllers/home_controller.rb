class HomeController < ApplicationController
  def index
    @patients = Patient.all
    @doctors = Doctor.all
    @appointments = Appointment.all.order(:date)
  end
end
