class Event < ApplicationRecord

<<<<<<< HEAD
	validates :name, :presence:true
=======
	has_many :registrations, dependent: :destroy

	validates :name, presence: true
	validates :description, length: {minimum: 25}
	validates :price, numericality: {greater_than_or_equal_to: 0}
>>>>>>> ab48a35154bf86a13ffa76948197016cf19b36e4

	def free?
		price.blank? || price.zero?
	end
end
