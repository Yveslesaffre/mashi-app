class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :retail_price
      t.string :category
      t.string :manufacturer
      t.integer :sourcing_price
      t.integer :height
      t.integer :width
      t.string :description

      t.timestamps
    end
  end
end
