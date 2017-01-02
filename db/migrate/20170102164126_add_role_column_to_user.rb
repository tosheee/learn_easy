class AddRoleColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, :default => "normal_user"
  end
end
