class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :workouts, :user_id, :user_exercise

  def user_exercise
    scope == object.user
  end
end
