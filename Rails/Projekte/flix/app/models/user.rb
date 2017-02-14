class User < ApplicationRecord
  has_secure_password


  	has_many :ratings, :dependent => :destroy
  	has_many :favourites, dependent: :destroy
  	has_many :favourited_movies, through: :favourites, source: :movie

  validates :name ,presence: true
  validates :email ,presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false }

end
