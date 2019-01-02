class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :validatable, :lockable
	has_one :user_info       


	validate :password_complexity

	def password_complexity
		return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,70}$/

		errors.add :password, 'Complexity requirement not met. Length should be 8-70 characters and include: 1 uppercase, 1 lowercase and 1 digit'
	end

end

