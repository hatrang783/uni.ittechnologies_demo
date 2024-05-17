class CreateOrderdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :orderdetails do |t|
      t.integer :quantity
      t.integer :rate
      t.text :review
      t.datetime :reviewdate
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
