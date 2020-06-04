class AddColumnToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :description, :text
    add_column :products, :brand, :string
  end
end
