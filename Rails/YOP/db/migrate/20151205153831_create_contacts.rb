class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :text
      t.string :phone
      t.text :email
      t.string :address

      t.timestamps null: false
    end
  end
end
