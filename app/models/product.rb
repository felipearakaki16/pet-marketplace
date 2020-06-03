class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  acts_as_taggable_on :tags

  validates :user, :name, :price, presence: true
  validates :name, uniqueness: true
end
