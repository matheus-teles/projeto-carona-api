class CreateRide < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.bigint :driver_id
      t.integer :capacity
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
