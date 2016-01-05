class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :experience_id
      t.string :name
      t.string :email
      t.string :program_type
      t.string :package_type
      t.string :price

      t.timestamps null: false
    end
  end
end
