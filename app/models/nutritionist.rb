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
  has_many :articles
  has_many :patients, dependent: :nullify

  ## Methods
  after_create :welcome_send
  # before_destroy :goodbye_send, prepend: true



  def welcome_send
    NutritionistMailer.welcome_email(self).deliver_now
  end

  # def goodbye_send
  #   NutritionistMailer.goodbye_email(self).deliver_now
  # end

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

  private

  def generate_token
    SecureRandom.hex(10)
  end

end
