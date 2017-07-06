class CreateAdminNameExercises < ActiveRecord::Migration
  def change
    create_table :admin_name_exercises do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
