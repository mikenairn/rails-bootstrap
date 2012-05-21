require 'api_constraints'
LoyaltyEngine::Engine.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    scope "/loyalty" do
      scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
        resources :loyalty_cards, :path => '/cards', :only => [:index, :show, :create, :update]
        resources :loyalty_schemes, :path => '/schemes', :only => [:index, :show]
      end
    end
  end
end