class Account < ApplicationRecord
	has_many :account_entries

	validate :name_is_valid

	def name_is_valid
		if name.length < 3
			errors.add(:name, "name cannot be empty or less than two characters")
		end
	end
end 
