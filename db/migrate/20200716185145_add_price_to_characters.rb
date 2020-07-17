class AddPriceToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :price, :integer
  end
end
