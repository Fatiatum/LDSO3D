class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :text_pt
      t.string :text_en
      t.string :phone_pt
      t.string :phone_en
      t.string :email_pt
      t.string :email_en
      t.string :address_pt
      t.string :address_en
      t.string :from_mail
      t.string :name
      t.string :subject
      t.string :msg

      t.timestamps null: false
    end
  end
end
