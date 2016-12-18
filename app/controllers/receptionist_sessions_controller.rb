class ReceptionistSessionsController < ApplicationController
  def new
  end
  def create
    receptionist = Receptionist.find_by(email: params[:receptionist_session][:email].downcase)
    if receptionist && receptionist.authenticate(params[:receptionist_session][:password])
      # Log the user in and redirect to the user's show page.
      log_in_receptionist receptionist
      redirect_to receptionist
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  def destroy
    log_out_receptionist
    redirect_to root_url
  end
end
