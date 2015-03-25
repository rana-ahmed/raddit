class Link < ActiveRecord::Base
	validates :title, :url, presence: true
	validates :title, length: { minimum: 3 }
  	validates :title, length: { maximum: 100 }
  	validates :url, format: { with: URI::regexp(%w(http https)),
    message: "not valid, Url must with http/https" }
	acts_as_votable
	
	belongs_to :user
	has_many :comments
end
