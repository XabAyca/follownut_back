class Nutritionist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :api_key, presence: true, uniqueness: true
  validates :slug_calendly, presence: true, format: { with: /https:\/\/calendly.com\/.*/ }, uniqueness: true
  has_many :appointments
end
