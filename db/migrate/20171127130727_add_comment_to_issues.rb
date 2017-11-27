class AddCommentToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :comment, :text
  end
end
