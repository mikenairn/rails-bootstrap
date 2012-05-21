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

  c = Devise::Oauth2Providable::Client.create(:name => "RailsBootStrap Java Client",
                                              :redirect_uri => "http://pure-leaf-6787.herokuapp.com/oauth/callback",
                                              :website => "http://pure-leaf-6787.herokuapp.com")
  c.update_attribute(:identifier, "5496d8355b5179a7dbcfda639886197b")
  c.update_attribute(:secret, "6da4d17be5700afe42520e63af316fea")
end

def setup_user
  User.create(:email => "user@example.com",
              :password => "password",
              :name => "User")
end

def setup_admin
  Admin.create(:email => "admin@example.com",
              :password => "password")
end

setup_client
setup_user
setup_admin