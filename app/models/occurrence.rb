class Occurrence < ApplicationRecord
  belongs_to :habit
  # validates :note, presence: true
end
