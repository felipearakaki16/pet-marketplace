class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  acts_as_taggable_on :tags
  has_many_attached :photos

  validates :user, :name, :price, presence: true
  validates :name

  def unavaiable!
    self.avaiable = false
  end
end
