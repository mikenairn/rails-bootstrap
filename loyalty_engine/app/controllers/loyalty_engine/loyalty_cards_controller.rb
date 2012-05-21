module LoyaltyEngine
  class LoyaltyCardsController < ApplicationController
    respond_to :html, :json
    before_filter :authenticate_user!

    # GET /loyalty_cards
    # GET /loyalty_cards.json
    def index
      @loyalty_cards = current_user.loyalty_scheme_loyalty_cards
    end

    # GET /loyalty_cards/1
    # GET /loyalty_cards/1.json
    def show
      @loyalty_card = current_user.loyalty_scheme_loyalty_cards.find(params[:id])
    end

    # GET /loyalty_cards/new
    # GET /loyalty_cards/new.json
    def new
      @loyalty_card = LoyaltyCard.new
    end

    # GET /loyalty_cards/1/edit
    def edit
      @loyalty_card = current_user.loyalty_scheme_loyalty_cards.find(params[:id])
    end

    # POST /loyalty_cards
    # POST /loyalty_cards.JSON
    def create
      @loyalty_card = LoyaltyCard.new(params[:loyalty_card])

      if @loyalty_card.save
        flash[:notice] = "LoyaltyCard was successfully created."
      end
      respond_with @loyalty_card
    end

    # PUT /loyalty_cards/1
    # PUT /loyalty_cards/1.json
    def update
      @loyalty_card = current_user.loyalty_scheme_loyalty_cards.find(params[:id])

      if @loyalty_card.update_attributes(params[:loyalty_card])
        flash[:notice] = "LoyaltyCard was successfully updated."
      end
      respond_with @loyalty_card
    end

    # DELETE /loyalty_cards/1
    # DELETE /loyalty_cards/1.json
    def destroy
      @loyalty_card = current_user.loyalty_scheme_loyalty_cards.find(params[:id])
      @loyalty_card.destroy

      respond_to do |format|
        format.html { redirect_to loyalty_cards_url }
        format.json { head :no_content }
      end
    end

    #def parse_for_nested
    #loyalty_scheme = current_user.loyalty_schemes.find_by_id(params[:loyalty_scheme_id])
    #if params[:loyalty_scheme_id]
    #  if params[:loyalty_scheme_id] == "all"
    #    @loyalty_cards = current_user.loyalty_scheme_loyalty_cards
    #  else
    #    loyalty_scheme = current_user.loyalty_schemes.find(params[:loyalty_scheme_id])
    #    @loyalty_cards = loyalty_scheme.loyalty_cards
    #  end
    #else
    #@loyalty_cards = current_user.loyalty_scheme_loyalty_cards
    #end
    #end
  end
end