class Shipper < ApplicationRecord
	has_many :customers,
		:as => :company

	has_many :trackings,
		:as => :trackable
end
