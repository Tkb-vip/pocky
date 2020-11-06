class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :basic_authenticate

  private

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user,pass|
      #user == 'high' && pass ==  'school'
    user = User.find_by(username: user,password:pass)
     if user.nil?
      session[:username]=""
      session[:teacher]=false
      session[:admin]=false

      false
     else
      session[:username]=user.username
      session[:teacher]=user.teacher
 
      if user.teacher == true
         session[:admin] = user.admin
      else
         session[:admin] = false
      end

      true
    


     end  
   end
  end
end
