class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  acts_as_taggable_on :tags

  validates :user, presence: true
  validates :name,  presence: true, uniqueness: true
  validates :price,  presence: true
end
