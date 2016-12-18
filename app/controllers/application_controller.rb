class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DoctorSessionsHelper
  include ReceptionistSessionsHelper
end
