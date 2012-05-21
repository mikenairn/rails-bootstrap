json.loyalty_card do |json|
  json.partial! 'loyalty_engine/api/v1/loyalty_cards/loyalty_card', loyalty_card: loyalty_card
  json.loyalty_scheme do |json|
    json.partial! 'loyalty_engine/api/v1/loyalty_schemes/loyalty_scheme', loyalty_scheme: loyalty_card.loyalty_scheme
  end
end