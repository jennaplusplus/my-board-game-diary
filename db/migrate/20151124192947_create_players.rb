class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
