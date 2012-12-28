class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :title  ,:price
  validates_presence_of :title, :image_url, :description
  validates_numericality_of :price
  validates_uniqueness_of :title
end
