class CreateAdminButtons < ActiveRecord::Migration
  def change
    create_table :admin_buttons do |t|
      t.string :name_button
      t.string :title_button
      t.string :type_button
      t.string :path_button

      t.timestamps null: false
    end
  end
end
