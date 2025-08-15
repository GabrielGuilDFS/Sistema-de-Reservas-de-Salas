class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :room_type
      t.integer :capacity
      t.string :resources

      t.timestamps
    end
  end
end
