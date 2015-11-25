class AddNameToMeetup < ActiveRecord::Migration
  def change
    add_column :meetups, :name, :string
  end
end
