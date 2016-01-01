class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name_pt
      t.string :name_en
      t.string :description_pt
      t.string :description_en
      t.string :image

      t.timestamps null: false
    end
  end
end
