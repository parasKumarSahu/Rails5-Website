class Article < ApplicationRecord
  belongs_to :design
  belongs_to :technical
  belongs_to :product
end
