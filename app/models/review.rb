class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant


	validates :comment, presence: true
	validates :comment, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed"}
end
