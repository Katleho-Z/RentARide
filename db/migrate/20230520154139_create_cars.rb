class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :make
      t.string :model
      t.decimal :price_per_day

      t.timestamps
    end
  end
end
