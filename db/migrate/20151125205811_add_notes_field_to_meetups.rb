class AddNotesFieldToMeetups < ActiveRecord::Migration
  def change
    add_column :meetups, :notes, :text
  end
end
