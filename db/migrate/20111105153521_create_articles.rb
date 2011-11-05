class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
