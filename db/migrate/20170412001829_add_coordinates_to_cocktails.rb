class AddCoordinatesToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :latitude, :float
    add_column :cocktails, :longitude, :float
  end
end
