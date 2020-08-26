# frozen_string_literal: true

class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by_id(params[:id])
  end

  def new 
    @patient = Patient.new
  end

  def create 
    @patient = Patient.create(patient_params)
    redirect_to patient_path(@patient)
  end

  def edit 
    set_patient
  end 

  def update 
    set_patient
    @patient.update(patient_params)
    redirect_to patient_path(@patient)
  end

  def destroy 
    set_patient
    @patient.destroy 
    redirect_to patients_path
  end

  
  private 

  def set_patient 
    @patient = Patient.find_by_id(params[:id])
  end

  def patient_params 
    params.require(:patient).permit(:name, :age, :bmi, :phone_number)
  end

end
