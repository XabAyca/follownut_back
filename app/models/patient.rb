class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  
  ## Validations
  validates :email, presence: true

  ## Relations
  has_many :appointments, dependent: :destroy
  belongs_to :nutritionist, optional: true
  has_many :logbooks, dependent: :destroy

  ## Methods
  after_create :welcome_send

  ## Gender options
  enum gender: [:unknown, :male, :female]


  def welcome_send
    PatientMailer.welcome_email(self).deliver_now
  end

  def generate_password_token!
    self.reset_password_token = generate_token
    self.reset_password_sent_at = Time.now.utc
    save!
  end

  def password_token_valid?
    (self.reset_password_sent_at + 4.hours) > Time.now.utc
  end

  def reset_password!(password)
    self.reset_password_token = nil
    self.password = password
    save!
  end

  def age
    ((Date.today - date_of_birth) / 365).to_i
  end

  private

  def generate_token
    SecureRandom.hex(10)
  end
  
end
