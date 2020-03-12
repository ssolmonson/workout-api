# frozen_string_literal: true

class ExercisesController < OpenReadController
  before_action :set_exercise, only: %i[update destroy]

  # GET /exercises
  def index
    @exercises = Exercise.all

    render json: @exercises
  end

  # GET /exercises/1
  def show
    @exercise = Exercise.find(params[:id])
    render json: @exercise
  end

  def show_cat
    render json: Exercise.where(category: params[:id]).shuffle.take(5)
    # arr.shuffle
    # arr.take(n) where n is the first amount of elements
  end

  # POST /exercises
  def create
    @exercise = current_user.exercises.build(exercise_params)

    if @exercise.save
      render json: @exercise, status: :created, location: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exercises/1
  def update
    if @exercise.update(exercise_params)
      render json: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exercises/1
  def destroy
    @exercise.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_exercise
    @exercise = current_user.exercises.find(params[:id])
    # @exercise = current_user.exercises.find(params[:category])
  end

  # Only allow a trusted parameter "white list" through.
  def exercise_params
    params.require(:exercise).permit(:title,
                                     :description,
                                     :category,
                                     :user_id)
  end
end
