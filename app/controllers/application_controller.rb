class ApplicationController < ActionController::Base
  before_action :authenticate_user! 

  def after_sign_in_path_for(resource)
    grades_path
  end
  #to protect access of end points without logging in (devise) we can add in specified controllers as well 
end
