# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def setup_client
  #http://stormy-stone-2668.heroku.com/oauth/callback
  c = Devise::Oauth2Providable::Client.create(:name => "RailsBootStrap Sinatra Client",
                                              :redirect_uri => "http://localhost:9393/oauth/callback",
                                              :website => "http://localhost:9393/")
  c.update_attribute(:identifier, "120094574673767")
  c.update_attribute(:secret, "b54dc82476af2814e620b86776c42c0e")
end

def setup_user
  User.create(:email => "user@rococosoft.com",
              :password => "noWires",
              :name => "User")
end

def setup_admin
  Admin.create(:email => "admin@rococosoft.com",
              :password => "noWires")
end

setup_client
setup_user
setup_admin