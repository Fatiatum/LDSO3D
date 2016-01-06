class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :iban
      t.integer :nib
      t.string :fb_link
      t.string :tw_link
      t.string :insta_link

      t.timestamps null: false
    end
  end
end
