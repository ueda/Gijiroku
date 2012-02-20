class AddCreatedByandUpdatedByToMinutes < ActiveRecord::Migration
  def change
    create_table "minutes", :force => true do |t|
      t.string   "title"
      t.string   "place"
      t.string   "attendee"
      t.datetime "scheduled_at"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "created_by"
      t.integer  "updated_by"
    end
  end
end
