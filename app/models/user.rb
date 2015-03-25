class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :password, :email, presence: true
  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :name, length: { minimum: 3 }
  validates :name, length: { maximum: 50 }

  has_many :links
  has_many :comments
end
