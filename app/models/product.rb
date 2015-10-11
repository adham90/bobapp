class Product < ActiveRecord::Base
  has_many :drops
  has_many :polls

  validates_presence_of :name, :msrp
end
