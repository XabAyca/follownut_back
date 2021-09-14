class Nutritionist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  ## Validations
  validates :email, presence: true
  validates :api_key, uniqueness: true, allow_blank: true
  validates :slug_calendly, format: { with: /https:\/\/calendly.com\/.*/ }, uniqueness: true, allow_blank: true

  ## Relations
  has_many :appointments

  ## Methods
  after_create :welcome_send

  def welcome_send
    NutritionistMailer.welcome_email(self).deliver_now
  end

end
