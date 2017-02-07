class Movie < ApplicationRecord
	has_many :reviews, dependent: :destroy
	has_many :favourites, dependent: :destroy
	has_many :favouriter, through: :favourites, source: :user
end
 