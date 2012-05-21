module LoyaltyEngine
  class Engine < ::Rails::Engine
    isolate_namespace LoyaltyEngine
    paths["config/routes"] << "config/api_routes.rb"
  end
end
