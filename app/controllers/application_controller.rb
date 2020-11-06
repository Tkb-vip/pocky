class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :init_session
  before_action :basic_authenticate
  private

  def init_session
    if session[:username].nil?
    session[:username]=""
    session[:teacher]=false
    session[:admin]=false
    session[:club_name_id]=0
    end
  end

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user,pass|
      #user == 'high' && pass ==  'school'
    user = User.find_by(username: user,password:pass)
     if user.nil?
      session[:username]=""
      session[:teacher]=false
      session[:admin]=false
      session[:club_name_id]=0

      false
     else
      session[:username]=user.username
      session[:teacher]=user.teacher
 
      if user.teacher == true
         session[:admin] = user.admin
      else
         session[:admin] = false
      end
      session[:club_name_id]=user.club_name_id

      true
    


     end  
   end
  end
end
