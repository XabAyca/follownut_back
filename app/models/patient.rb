class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  
  ## Validations
  validates :email, presence: true

  ## Relations
  has_many :appointments

  ## Methods
  after_create :welcome_send

  def welcome_send
    PatientMailer.welcome_email(self).deliver_now
  end
  
end
