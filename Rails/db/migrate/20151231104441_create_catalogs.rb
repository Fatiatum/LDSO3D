class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :text_pt
      t.string :text_en
      t.string :exp_title_pt
      t.string :exp_title_en
      t.string :exp_text_pt
      t.string :exp_text_en

      t.timestamps null: false
    end
  end
end
