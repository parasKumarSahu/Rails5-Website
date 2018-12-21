class Product < ApplicationRecord
  belongs_to :family
  has_one :article
end
