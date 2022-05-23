class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :carpet, null: false, foreign_key: true
      t.date :booked_from
      t.date :booked_until
      t.integer :rating

      t.timestamps
    end
  end
end
