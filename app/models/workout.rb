class Workout < ApplicationRecord
  belongs_to :user
  has_many :trainings, dependent: :destroy
  has_many :exercises, through: :trainings
  validate :workout_date

  # def workout_date_valid
  #   Date.today >= :workout_date
  # end
end
