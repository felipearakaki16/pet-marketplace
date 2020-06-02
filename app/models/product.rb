class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :orders, dependent: :destroy

  validates :user, presence: true
  validates :name,  presence: true, uniqueness: true
  validates :price,  presence: true
end
