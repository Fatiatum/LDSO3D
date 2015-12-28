class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :text
      t.string :phone
      t.text :email 
      t.string :address
      t.text :from_mail
      t.string :name
      t.string :subject
      t.text :msg

      t.timestamps null: false
    end
  end
end
