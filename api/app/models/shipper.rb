class Shipper < ApplicationRecord
	has_many :customers,
		:as => :company
end
