class Product < ApplicationRecord
  belongs_to :family
  has_and_belongs_to_many :references
  has_one :overview
  has_one :design
  has_one :manufacturing
  has_one :installation
  has_one :performence
  has_one :business
end
