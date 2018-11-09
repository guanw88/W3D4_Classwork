class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.string :text, null: false
      t.integer :answer_choice_id, null: false
      t.timestamps
    end
    add_index  :questions, :poll_id 
    add_index  :questions, :answer_choice_id
  end
end
