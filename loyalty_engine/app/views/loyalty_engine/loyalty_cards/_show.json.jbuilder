json.loyalty_card do |json|
  json.partial! loyalty_card
  json.loyalty_scheme do |json|
    json.partial! loyalty_card.loyalty_scheme
  end
end