class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 def after_sign_in_path_for(resource)
 if (@user.email.start_with?("user"))
   "/pages/index_student"
 else
   "/pages/index_tcser"
 end
 end
  before_action :authenticate_user!
end
