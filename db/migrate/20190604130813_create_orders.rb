class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :purchase_date
      t.string :status
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
