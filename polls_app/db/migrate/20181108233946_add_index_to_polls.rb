class AddIndexToPolls < ActiveRecord::Migration[5.1]
  def change
    add_index :polls , :question_id
  end
end
