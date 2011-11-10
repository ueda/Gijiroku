class AddAttendeeToMinutes < ActiveRecord::Migration
  def change
    add_column :Minutes, :attendee, :string
  end
end
