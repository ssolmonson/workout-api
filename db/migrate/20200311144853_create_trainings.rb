class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.references :workout, foreign_key: true
      t.references :exercise, foreign_key: true
      t.integer :repititions
      t.integer :sets
      t.integer :weight

      t.timestamps
    end
  end
end
