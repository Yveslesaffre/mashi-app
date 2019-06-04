class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :postcode
      t.integer :street_number
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
