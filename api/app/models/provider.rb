class Provider < ApplicationRecord
	has_many :customers,
		:as => :company
end
