class Overview < ApplicationRecord
  belongs_to :product
  validates :product_id, uniqueness: true  
end
