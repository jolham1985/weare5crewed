class AddQuestionsToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :questionnaire, :text, array:true, default: []
  end
end
