class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.float :duration
      t.text :notes
      t.text :outcome
      t.integer :game_id
      t.integer :meetup_id

      t.timestamps null: false
    end
  end
end
