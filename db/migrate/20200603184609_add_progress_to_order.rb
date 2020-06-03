class AddProgressToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :progress, :string, default: "Em andamento"
  end
end
