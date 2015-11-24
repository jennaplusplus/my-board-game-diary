class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.float :time_to_play
      t.string :genre
      t.integer :min_players
      t.integer :max_players

      t.timestamps null: false
    end
  end
end
