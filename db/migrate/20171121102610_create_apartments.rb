class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.integer :tenants_id
      t.integer :landlords_id
      t.string :address

      t.timestamps
    end
  end
end
