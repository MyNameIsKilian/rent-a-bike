class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bikes, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # has_one_attached :avatar
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :phone_number, presence: true
  # validates :email, presence: true
  # validates :password, presence: true
end
