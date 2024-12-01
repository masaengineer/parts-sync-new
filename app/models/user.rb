class User < ApplicationRecord
  include Addressable
  include Contactable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :orders


  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
