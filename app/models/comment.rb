class Comment < ActiveRecord::Base

	validates :body, presence: true
	validates :body, length: { minimum: 3 }
	validates :body, length: { maximum: 500 }

	belongs_to :user
	belongs_to :link
end
