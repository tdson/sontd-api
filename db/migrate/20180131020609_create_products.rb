class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :manufacturer, foreign_key: true
      t.string :name
      t.integer :price
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
