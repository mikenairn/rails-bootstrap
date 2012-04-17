# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def setup_client
  c = Devise::Oauth2Providable::Client.create(:name => "RailsBootStrap Sinatra Client",
                                              :redirect_uri => "http://localhost:9393/oauth/callback",
                                              :website => "http://localhost:9393/")
  c.update_attribute(:identifier, "120094574673767")
  c.update_attribute(:secret, "b54dc82476af2814e620b86776c42c0e")
end

def setup_user
  User.create(:email => "m.nairn@gmail.com",
              :password => "noWires",
              :name => "Mike")
end

setup_client
setup_user