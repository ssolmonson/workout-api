class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
