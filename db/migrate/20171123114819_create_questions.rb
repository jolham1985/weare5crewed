class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :parent_id
      t.string :content
      t.boolean :answer

      t.timestamps
    end
  end
end
