class Tracking < ApplicationRecord
  	belongs_to :trackable,
  		:polymorphic => true

	enum :event_type => {
		:status => 0,
		:pickup => 1,
		:exception => 2
	}
end
