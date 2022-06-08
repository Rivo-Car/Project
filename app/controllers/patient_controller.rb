class PatientController < ApplicationController
  def list
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def patient_params
    params.fetch(:patient, {}).permit(:title, :name)
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def patient_param
    params.fetch(:patient, {}).permit( :name, :password, :email)
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update_attributes(patient_params)
      redirect_to :action => 'show', :id => @patient
    else
      render :action => 'edit'
    end
  end

  def delete
    Patient.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
