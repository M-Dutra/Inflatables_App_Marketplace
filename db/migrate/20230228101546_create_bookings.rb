class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :inflatable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
