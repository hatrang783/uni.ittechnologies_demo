class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.float :points

      t.timestamps
    end
  end
end
