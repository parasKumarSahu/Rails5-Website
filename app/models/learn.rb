class Learn < ApplicationRecord
	has_and_belongs_to_many :courses
	before_destroy { courses.clear }
end
