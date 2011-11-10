class RemoveNameFromMinutes < ActiveRecord::Migration
  def up
    remove_column :minutes, :name
  end

  def down
    add_column :minutes, :name, :string
  end
end
