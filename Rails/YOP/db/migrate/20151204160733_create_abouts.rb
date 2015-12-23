class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :text, :null => false
      t.string :image
      t.timestamps null: false
    end
  end
end