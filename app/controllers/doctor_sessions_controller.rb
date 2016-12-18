class DoctorSessionsController < ApplicationController
  def new
  end
  def create
    doctor = Doctor.find_by(email: params[:doctor_session][:email].downcase)
    if doctor && doctor.authenticate(params[:doctor_session][:password])
      # Log the user in and redirect to the user's show page.
      log_in_doctor doctor
      redirect_to doctor
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  def destroy
    log_out_doctor
    redirect_to root_url
  end
end
