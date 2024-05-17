class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :orderdate
      t.integer :point
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
