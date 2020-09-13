class AddRowsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :year, :integer
    add_column :products, :brand, :string
    add_column :products, :type, :string
  end
end
