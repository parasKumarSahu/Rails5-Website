class Decor < ApplicationRecord
  has_and_belongs_to_many :references
end
