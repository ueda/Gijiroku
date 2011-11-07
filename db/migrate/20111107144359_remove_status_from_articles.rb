class RemoveStatusFromArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :status
  end

  def down
    add_column :articles, :status, :integer
  end
end
