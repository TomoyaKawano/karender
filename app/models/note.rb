class Note < ApplicationRecord
    validates :content, length: { maximum: 255 }
    validates :day, presence: true
    validates :month, presence: true
    validates :line_number, presence: true, inclusion: { in: 1..5 }
  end