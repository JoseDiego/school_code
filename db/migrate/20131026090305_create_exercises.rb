class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :description
      t.text :solution
      t.references :level, index: true

      t.timestamps
    end
  end
end
