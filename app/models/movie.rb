class Movie < ApplicationRecord
	has_many :ratings
	has_many :users, through: :user_movies
end
