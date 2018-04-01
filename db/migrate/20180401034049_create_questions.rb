class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question_id
      t.string :event_place_id
      t.text :question_content

      t.timestamps
    end
  end
end
