class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependence: :destroy

  validates :name,  presence: true, uniqueness: true
  validates :price,  presence: true
  validates :category
end
