LoyaltyEngine::Engine.routes.draw do
  scope "/loyalty" do
    resources :loyalty_schemes, :path => '/schemes' do
      resources :loyalty_cards, :path => '/cards'
    end
    resources :loyalty_cards, :path => '/cards'
    root :to => 'loyalty_cards#index'
  end
end