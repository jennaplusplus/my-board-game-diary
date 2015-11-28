class AddLocationToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :city, :string
    add_column :players, :state, :string
  end
end
