class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.references :apartments, foreign_key: true
      t.string :name
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
