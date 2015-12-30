class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :text_pt
      t.string :text_en
      t.string :image

      t.timestamps null: false
    end
  end
end
