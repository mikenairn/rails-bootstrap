json.array!(@loyalty_cards) do |json, loyalty_card|
  json.partial! 'show', loyalty_card: loyalty_card
end