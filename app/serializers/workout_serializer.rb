class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :workout_date, :exercises
end
