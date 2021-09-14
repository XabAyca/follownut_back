class Nutritionist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :email, presence: true
  validates :api_key, uniqueness: true, allow_blank: true
  validates :slug_calendly, format: { with: /https:\/\/calendly.com\/.*/ }, uniqueness: true, allow_blank: true

  has_many :appointments

end
