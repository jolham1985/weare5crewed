class SingularizeTenantLandlord < ActiveRecord::Migration[5.1]
  def change
    remove_column :apartments, :landlords_id
    remove_column :apartments, :tenants_id

    add_column :apartments, :landlord_id, :integer
    add_column :apartments, :tenant_id, :integer
  end
end
