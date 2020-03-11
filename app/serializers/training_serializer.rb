class TrainingSerializer < ActiveModel::Serializer
  attributes :id, :repititions, :sets, :weight
  has_one :workout
  has_one :exercise
end
