class Course < ApplicationRecord
	has_and_belongs_to_many :learns
	before_destroy { learns.clear }
end
