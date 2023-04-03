class AddUserIdToInmuebles < ActiveRecord::Migration[6.1]
  def change
    add_column :inmuebles, :user_id, :integer
    add_index :inmuebles, :user_id
  end
end
