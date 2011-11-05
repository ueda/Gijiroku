class CreateMinutes < ActiveRecord::Migration
  def change
    create_table :minutes do |t|
      t.string :title
      t.string :name
      t.string :place
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
