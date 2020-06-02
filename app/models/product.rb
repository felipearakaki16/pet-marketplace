class Product < ApplicationRecord
  belongs_to :user, :category
  has_many :orders, dependent: :destroy

  validates :name,  presence: true, uniqueness: true
  validates :price,  presence: true
end
