class AddAvaiableToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :avaiable, :boolean, default: true
  end
end
