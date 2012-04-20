module LoyaltyEngine
  class LoyaltyScheme < ActiveRecord::Base
    belongs_to :user
    has_many :loyalty_cards

    validates :name, :presence => true
    validates :purchase, :presence => true
    validates :redeem, :presence => true
    validates :stamps_required, :presence => true, :numericality => {:greater_than_or_equal_to => 1}
    attr_accessible :name, :purchase, :redeem, :stamps_required, :user_id
  end
end
