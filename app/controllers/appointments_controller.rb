class AppointmentsController < ApplicationController
  
  
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find_by_id(params[:id])
  end

  def new 
    @appointment = Appointment.new
  end

  def create 
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def edit 
    set_appointment
  end 

  def update 
    set_appointment
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy 
    set_appointment
    @appointment.destroy 
    redirect_to appointments_path
  end

  
  private 

  def set_appointment 
    @appointment = Appointment.find_by_id(params[:id])
  end

  def appointment_params 
    params.require(:appointment).permit(:name, :age, :bmi, :phone_number)
  end

end

