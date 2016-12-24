class CreateAdminLesions < ActiveRecord::Migration
  def change
    create_table :admin_lesions do |t|
      t.string :name_lesion
      t.text :description

      t.timestamps null: false
    end
  end
end
