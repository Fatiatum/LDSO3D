class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :name_pt
      t.string :name_en
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
