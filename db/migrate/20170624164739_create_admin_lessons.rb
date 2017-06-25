class CreateAdminLessons < ActiveRecord::Migration
  def change
    create_table :admin_lessons do |t|
      t.boolean :view, default: true
      t.text :conversation
      t.text :words

      t.timestamps null: false
    end
  end
end
