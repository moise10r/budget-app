class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :email, presence: true, length: { maximum: 100 }
  validates :email, uniqueness: true

  has_many :deals
  has_many :categories
end
