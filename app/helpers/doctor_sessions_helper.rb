module DoctorSessionsHelper
  # Logs in the given user.
  def log_in_doctor(doctor)
    session[:doctor_id] = doctor.id
  end

  def log_out_doctor
    session.delete(:doctor_id)
    @current_doctor = nil
  end

  #Returns the current logged-in user (if any).
  def current_doctor
    @current_doctor ||= Doctor.find_by(id: session[:doctor_id])
  end

  #Returns true if the user is logged in,false otherwise.
  def logged_in_doctor?
    !current_doctor.nil?
  end
end
