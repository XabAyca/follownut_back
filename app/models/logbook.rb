class Logbook < ApplicationRecord
  ## Validations
  validates :title, presence:true
  validates :content, presence:true
  
  ## Relations
  belongs_to :patient
end
