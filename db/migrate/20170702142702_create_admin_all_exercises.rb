class CreateAdminAllExercises < ActiveRecord::Migration
  def change
    create_table :admin_all_exercises do |t|
      t.integer :exercite_id
      t.string :title
      t.text :sentences

      t.timestamps null: false
    end
  end
end
