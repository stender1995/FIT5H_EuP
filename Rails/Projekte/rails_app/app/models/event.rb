class Event < ApplicationRecord

	validates :name, :presence:true

	def free?
		price.blank? || price.zero?
	end
end
