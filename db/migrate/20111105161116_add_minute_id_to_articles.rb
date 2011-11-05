class AddMinuteIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :minute_id, :integer
  end
end
