class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  
  def authenticate
    uid = ENV['USER_ID'] || USER_ID
    pwd = ENV['PASSWORD'] || PASSWORD

    authenticate_or_request_with_http_basic do |username, password|
      username == USER_ID && password == PASSWORD
    end
  end
end
