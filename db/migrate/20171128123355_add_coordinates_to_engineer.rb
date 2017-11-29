class AddCoordinatesToEngineer < ActiveRecord::Migration[5.1]
  def change
    add_column :engineers, :latitude, :float
    add_column :engineers, :longitude, :float
  end
end
