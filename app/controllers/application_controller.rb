class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :log_request

  def log_request
    logger.debug "request.url = #{request.url}"
    logger.debug "AUTHORIZATION = #{request.env['AUTHORIZATION']}"
  end
end
