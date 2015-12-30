class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :title_pt
      t.string :title_en
      t.string :subtitle_pt
      t.string :subtitle_en
      t.string :texttitle_pt
      t.string :texttitle_en
      t.string :text_pt
      t.string :text_en
      t.string :image

      t.timestamps null: false
    end
  end
end
