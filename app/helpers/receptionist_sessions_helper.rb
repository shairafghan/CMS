module ReceptionistSessionsHelper
  def log_in_receptionist(receptionist)
    session[:receptionist_id] = receptionist.id
  end

  def log_out_receptionist
    session.delete(:receptionist_id)
    @current_receptionist = nil
  end

  #Returns the current logged-in user (if any).
  def current_receptionist
    @current_receptionist ||= Receptionist.find_by(id: session[:receptionist_id])
  end

  #Returns true if the user is logged in,false otherwise.
  def logged_in_receptionist?
    !current_receptionist.nil?
  end
end
