class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :basic_authenticate

  private

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user,pass|
      #user == 'high' && pass ==  'school'
    user = User.find_by(username: user,password:pass)
     if user.nil?
      false
     else
      true
     @user=user.username
     @teacher=teacher.teache


     end  
   end
  end
end
