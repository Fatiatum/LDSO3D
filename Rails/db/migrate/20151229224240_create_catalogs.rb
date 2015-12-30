class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :text
      t.string :exp_title
      t.string :exp_text

      t.timestamps null: false
    end
  end
end
