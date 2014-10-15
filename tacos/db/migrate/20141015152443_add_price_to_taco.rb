class AddPriceToTaco < ActiveRecord::Migration
  def change
    add_column :tacos, :price, :integer, default: 0
  end
end
