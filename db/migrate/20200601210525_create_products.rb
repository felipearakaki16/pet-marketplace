class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.float :price
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
