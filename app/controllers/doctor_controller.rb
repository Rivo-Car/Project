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
    params.require(:doctors).permit(:title, :name, )
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to :action => 'list'
    else
      @subjects = Subject.all
      render :action => 'new'
    end
  end

  def edit
    @doctor = doctor.find(params[:id])
    @subjects = Subject.all
  end

  def doctor_param
    params.require(doctor).permit(:title, :name, :subject_id, :description)
  end

  def update
    @doctor = doctor.find(params[:id])

    if @doctor.update_attributes(doctor_param)
      redirect_to :action => 'show', :id => @doctor
    else
      @subjects = Subject.all
      render :action => 'edit'
    end
  end

  def delete
    doctor.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
