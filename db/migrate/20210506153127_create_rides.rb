class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.integer :passenger_id
      t.integer :taxi_id
      t.integer :amount
      t.integer :duration

      t.timestamps
    end
  end
end
