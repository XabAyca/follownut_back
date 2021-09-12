class Logbook < ApplicationRecord
  validates :title, presence: true
  validates :content,presence:true
  validates :is_shared,presence:true
end
