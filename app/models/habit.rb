class Habit < ApplicationRecord

  belongs_to :user
  has_many :occurrences, dependent: :destroy
  validates :name, presence: true
  validates :goal, presence: true

end
