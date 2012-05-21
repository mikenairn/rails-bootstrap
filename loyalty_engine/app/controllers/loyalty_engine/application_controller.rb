module LoyaltyEngine
  class ApplicationController < ActionController::Base
    before_filter :log_request

    def log_request
      logger.debug "request.url = #{request.url}"
      logger.debug "AUTHORIZATION = #{request.env['AUTHORIZATION']}"
      logger.debug "HTTPS = #{request.env['HTTPS']}"
      logger.debug "HTTP_X_FORWARDED_PROTO = #{request.env['HTTP_X_FORWARDED_PROTO']}"
      logger.debug "request[HTTP_AUTHORIZATION]= #{request.env['HTTP_AUTHORIZATION']}"
      logger.debug "request[HTTP_USER_AGENT] = #{request.env['HTTP_USER_AGENT']}"
      logger.debug "ENV[QUEUE_JOBS] = #{ENV["QUEUE_JOBS"]}"
    end

  end
end
