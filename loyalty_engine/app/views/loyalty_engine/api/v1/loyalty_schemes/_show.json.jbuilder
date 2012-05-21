json.loyalty_scheme do |json|
  json.partial! 'loyalty_engine/api/v1/loyalty_schemes/loyalty_scheme', loyalty_scheme: loyalty_scheme
    json.loyalty_cards(loyalty_scheme.loyalty_cards) do |json, loyalty_card|
    json.partial! 'loyalty_engine/api/v1/loyalty_cards/loyalty_card', loyalty_card: loyalty_card
  end
end