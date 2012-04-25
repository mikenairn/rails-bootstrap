json.loyalty_scheme do |json|
  json.partial! loyalty_scheme
  json.loyalty_cards(loyalty_scheme.loyalty_cards) do |json, loyalty_card|
    json.partial! loyalty_card
  end
end