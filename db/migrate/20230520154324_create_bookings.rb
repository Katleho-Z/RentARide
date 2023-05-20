class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.date :rental_date
      t.date :return_date
      t.string :pickup_location
      t.string :return_location
      t.decimal :total_cost

      t.timestamps
    end
  end
end
