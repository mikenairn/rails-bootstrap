module LoyaltyEngine
  class LoyaltyCard < ActiveRecord::Base
    belongs_to :user
    belongs_to :loyalty_scheme
    validates :loyalty_scheme_id, :presence => true
    validates :stamps, :presence => true, :numericality => {:greater_than_or_equal_to => 0}
    attr_accessible :stamps, :loyalty_scheme_id
  end
end
