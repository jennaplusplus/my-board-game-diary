class CreateJoinTables < ActiveRecord::Migration

  def change
    create_table :meetups_players, id: false do |t|
      t.belongs_to :meetup, index: true
      t.belongs_to :player, index: true
    end


    create_table :events_players, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :player, index: true
    end

    create_table :games_players, id: false do |t|
      t.belongs_to :game, index: true
      t.belongs_to :player, index: true
    end

  end
end
