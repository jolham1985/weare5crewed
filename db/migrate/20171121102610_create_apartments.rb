class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.references :tenants, foreign_key: true
      t.references :landlords, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
