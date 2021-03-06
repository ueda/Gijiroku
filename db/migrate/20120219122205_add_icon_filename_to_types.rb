class AddIconFilenameToTypes < ActiveRecord::Migration
  def change
    create_table "types", :force => true do |t|
      t.string   "name"
      t.integer  "order"
      t.string   "icon_filename", :limit=>128
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
