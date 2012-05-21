module LoyaltyEngine

module Api
  module V1
      class LoyaltyCardsController < ApplicationController
        respond_to :json
        before_filter :authenticate_user!

        # GET /loyalty_cards
        # GET /loyalty_cards.json
        def index
          @loyalty_cards = current_user.loyalty_cards
        end

        # GET /loyalty_cards/1
        # GET /loyalty_cards/1.json
        def show
          @loyalty_card = current_user.loyalty_cards.find(params[:id])
        end

        # POST /loyalty_cards
        # POST /loyalty_cards.JSON
        def create
          @loyalty_card = LoyaltyCard.new(params[:loyalty_card])
          @loyalty_card.user = current_user
          render 'show'
        end

        # PUT /loyalty_cards/1
        # PUT /loyalty_cards/1.json
        def update
          @loyalty_card = current_user.loyalty_cards.find(params[:id])
          @loyalty_card.update_attributes(params[:loyalty_card])
          render 'show'
        end

      end
    end
  end
end