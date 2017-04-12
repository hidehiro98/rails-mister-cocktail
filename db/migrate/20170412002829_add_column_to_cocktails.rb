class AddColumnToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :address, :string
  end
end
