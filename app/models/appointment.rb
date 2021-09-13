class Appointment < ApplicationRecord
  validates :date,presence:true
  validates :weight,presence:true
  validates :height,presence:true
  validates :body_fat, presence:true
  validates :muscle_mass, presence:true
  validates :visceral_fat, presence:true
  validates :content, presence:true
  belongs_to :patient
  belongs_to :nutritionist
end
