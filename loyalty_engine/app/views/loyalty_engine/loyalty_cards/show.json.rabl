object @loyalty_card
attributes :id, :stamps
child(:loyalty_scheme) { extends 'loyalty_engine/loyalty_schemes/show'}