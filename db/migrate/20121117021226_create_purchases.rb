class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.date :date

      t.timestamps
    end
  end
end
