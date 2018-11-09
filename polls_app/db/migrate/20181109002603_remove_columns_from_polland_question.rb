class RemoveColumnsFromPollandQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :polls, :question_id
    remove_index :questions, :answer_choice_id
    remove_column :questions, :answer_choice_id
  end
end
