class DoctorController < ApplicationController
  def list
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
    @categories = Category.all
  end

  def doctor_params
    params.fetch(:doctor, {}).permit(:title, :name)
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to :action => 'list'
    else
      @categories = Category.all
      render :action => 'new'
    end
  end

  def edit
    @doctor = doctor.find(params[:id])
    @categories = Category.all
  end

  def doctor_param
    params.require(doctor).permit(:title, :name, :subject_id, :description)
  end

  def update
    @doctor = doctor.find(params[:id])

    if @doctor.update_attributes(doctor_params)
      redirect_to :action => 'show', :id => @doctor
    else
      @categories = Category.all
      render :action => 'edit'
    end
  end

  def delete
    doctor.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
