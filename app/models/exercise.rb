class Exercise < ApplicationRecord
  belongs_to :user
  validates :title,
            :description,
            :category
end
