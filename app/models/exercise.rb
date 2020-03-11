class Exercise < ApplicationRecord
  belongs_to :user
  has_many :trainings, dependent: :destroy
  has_many :workouts, through: :trainings
  validates :title,
            :description,
            :category,
            presence: true
end
