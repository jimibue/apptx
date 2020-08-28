class AppointmentsController < ApplicationController
  def new
    @patient = Patient.find(params[:patient_id])
    @doctor = Doctor.find(params[:doctor_id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @doctor = Doctor.find(params[:doctor_id])
    Appointment.create(date: params[:doctor][:date], doctor_id: @doctor.id, patient_id: @patient.id)

    redirect_to patient_path(@patient)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :date)
  end
end
