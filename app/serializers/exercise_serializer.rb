class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category
end
