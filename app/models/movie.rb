class Movie < ApplicationRecord
	has_many :ratings
	has_many :user_movies
	has_many :users, through: :user_movies
	belongs_to :creator, class_name: "User", foreign_key: "user_id"

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
