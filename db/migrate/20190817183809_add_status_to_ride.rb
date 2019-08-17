class AddStatusToRide < ActiveRecord::Migration[5.2]
  def change
    add_column :rides, :status, :integer, default: 0
  end
end
