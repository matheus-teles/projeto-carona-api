class AddEmailAndTelephoneToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :telephone, :string
  end
end
