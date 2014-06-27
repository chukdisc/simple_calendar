class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name, null: false, index: true
      t.string :email, null: false, index: true
      t.string :phone, null: false, index: true
      t.integer :band_members, null: false, index: true

      t.timestamps
    end
  end
end
