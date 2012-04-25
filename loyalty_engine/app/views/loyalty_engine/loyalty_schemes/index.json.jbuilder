json.array!(@loyalty_schemes) do |json, loyalty_scheme|
  json.partial! 'show', loyalty_scheme: loyalty_scheme
end