class AddPriceToCarpets < ActiveRecord::Migration[7.0]
  def change
    add_column :carpets, :price, :float
  end
end
