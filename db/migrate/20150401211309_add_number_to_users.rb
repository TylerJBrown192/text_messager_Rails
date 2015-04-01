class AddNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :string
    add_column :messages, :user_id, :integer
  end
end
