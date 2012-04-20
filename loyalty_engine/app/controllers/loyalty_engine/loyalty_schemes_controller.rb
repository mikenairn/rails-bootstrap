module LoyaltyEngine
  class LoyaltySchemesController < ApplicationController
    respond_to :html, :json
    before_filter :authenticate_user!

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
  
    # GET /loyalty_schemes/new
    # GET /loyalty_schemes/new.json
    def new
      @loyalty_scheme = LoyaltyScheme.new
    end
  
    # GET /loyalty_schemes/1/edit
    def edit
      @loyalty_scheme = current_user.loyalty_schemes.find(params[:id])
    end
  
    # POST /loyalty_schemes
    # POST /loyalty_schemes.json
    def create
      @loyalty_scheme = LoyaltyScheme.new(params[:loyalty_scheme])
      @loyalty_scheme.user = current_user

      if @loyalty_scheme.save
        flash[:notice] = "Loyalty scheme was successfully created."
      end
      respond_with @loyalty_scheme
    end
  
    # PUT /loyalty_schemes/1
    # PUT /loyalty_schemes/1.json
    def update
      @loyalty_scheme = current_user.loyalty_schemes.find(params[:id])

      if @loyalty_scheme.update_attributes(params[:loyalty_scheme])
        flash[:notice] = "Loyalty scheme was successfully updated."
      end
      respond_with @loyalty_scheme
    end
  
    # DELETE /loyalty_schemes/1
    # DELETE /loyalty_schemes/1.json
    def destroy
      @loyalty_scheme = current_user.loyalty_schemes.find(params[:id])
      @loyalty_scheme.destroy
  
      respond_to do |format|
        format.html { redirect_to loyalty_schemes_url }
        format.json { head :no_content }
      end
    end
  end
end
