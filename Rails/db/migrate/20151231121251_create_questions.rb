class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name_pt
      t.string :name_en
      t.string :answer_pt
      t.string :answer_en
      t.references :faq, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
