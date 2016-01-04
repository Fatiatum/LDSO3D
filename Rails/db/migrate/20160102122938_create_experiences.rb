class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :program_type
      t.string :package_type
      t.string :description_pt
      t.string :description_en
      t.string :price
      t.references :Product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
