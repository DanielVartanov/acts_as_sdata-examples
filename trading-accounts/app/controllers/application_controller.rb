class ApplicationController < ActionController::Base

  helper :all
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :authenticate
  
  def authenticate
    #currently invalidly submitted username/password will be ignored and request treated as if nothing was supplied
    #may need to change that to provide for authentication based errors
    authenticate_or_request_with_http_basic do |sage_username, password|
      return nil if sage_username.blank? || password.blank?
      return @user = User.find(:first, :conditions => {:sage_username => sage_username, :password => password})
    end
  end
end
