class CreateRidesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.bigint :ride_id
      t.bigint :user_id

      t.timestamps
    end
  end
end
