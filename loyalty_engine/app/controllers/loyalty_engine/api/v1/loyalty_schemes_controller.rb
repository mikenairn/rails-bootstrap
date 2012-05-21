module LoyaltyEngine

  module Api
    module V1
      class LoyaltySchemesController < ApplicationController
        respond_to :html, :json
        before_filter :authenticate_user!

        before_filter :log_request

        def log_request
          logger.info "request.url = #{request.url}"
          logger.info "AUTHORIZATION = #{request.env['AUTHORIZATION']}"
          logger.info "HTTPS = #{request.env['HTTPS']}"
          logger.info "HTTP_X_FORWARDED_PROTO = #{request.env['HTTP_X_FORWARDED_PROTO']}"
          logger.info "request[HTTP_AUTHORIZATION]= #{request.env['HTTP_AUTHORIZATION']}"
          logger.info "request[HTTP_USER_AGENT] = #{request.env['HTTP_USER_AGENT']}"
          logger.info "ENV[QUEUE_JOBS] = #{ENV["QUEUE_JOBS"]}"
          request.env.each() { |k, v|
            logger.info "#{k} : #{v}\n"
          }
        end


        # GET /loyalty_schemes
        # GET /loyalty_schemes.json
        def index
          @loyalty_schemes = current_user.loyalty_schemes
        end

        # GET /loyalty_schemes/1
        # GET /loyalty_schemes/1.json
        def show
          @loyalty_scheme = current_user.loyalty_schemes.find(params[:id])
        end

      end
    end
  end
end
