class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :title
      t.string :subtitle
      t.string :image
      t.string :texttitle
      t.string :text

      t.timestamps null: false
    end
  end
end
