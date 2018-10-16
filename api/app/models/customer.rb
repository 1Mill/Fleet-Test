class Customer < ApplicationRecord
	belongs_to :company,
		:polymorphic => true
end
