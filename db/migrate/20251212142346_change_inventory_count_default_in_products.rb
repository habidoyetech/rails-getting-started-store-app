class ChangeInventoryCountDefaultInProducts < ActiveRecord::Migration[8.1]
  # def change
  # end
  def up
    Product.where(inventory_count: nil).update_all(inventory_count: 0)
    change_column_default :products, :inventory_count, 0
  end

  def down
    change_column_default :products, :inventory_count, nil
  end
end
