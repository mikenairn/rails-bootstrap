LoyaltyEngine::Engine.routes.draw do
  resources :loyalty_schemes,:path => '/schemes'
  resources :loyalty_cards, :path => '/cards'
  root :to => 'loyalty_cards#index'
end
