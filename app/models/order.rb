class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :date, :user, :product,  presence: true
end
