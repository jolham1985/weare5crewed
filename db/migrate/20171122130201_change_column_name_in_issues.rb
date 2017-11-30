class ChangeColumnNameInIssues < ActiveRecord::Migration[5.1]
  def change
    rename_column :issues, :apartments_id, :apartment_id
    rename_column :issues, :categories_id, :category_id
  end
end
