class Product < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true
  validates :price, :presence => true
end
