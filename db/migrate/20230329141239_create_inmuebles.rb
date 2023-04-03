class CreateInmuebles < ActiveRecord::Migration[6.1]
  def change
    create_table :inmuebles do |t|
      t.string :address
      t.float :price
      t.integer :rooms
      t.integer :bathrooms
      t.float :area
      t.string :description

      t.timestamps
    end
  end
end
