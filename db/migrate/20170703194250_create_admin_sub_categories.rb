class CreateAdminSubCategories < ActiveRecord::Migration
  def change
    create_table :admin_sub_categories do |t|
      t.integer :category_id
      t.string :name

      t.timestamps null: false
    end
  end
end
