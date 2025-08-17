class AddFieldsToReservations < ActiveRecord::Migration[8.0]
  def change
    add_column :reservations, :end_time, :datetime
    add_column :reservations, :status, :string
    add_column :reservations, :reason, :string
  end
end
