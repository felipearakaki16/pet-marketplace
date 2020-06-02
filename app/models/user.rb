class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependece: :destroy
  has_many :products, dependece: :destroy

  validates :user_name,  presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }, unless: "password.nil?"
  validates :store_name, presence: true, uniqueness: true
end
