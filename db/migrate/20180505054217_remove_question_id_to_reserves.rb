class RemoveQuestionIdToReserves < ActiveRecord::Migration[5.0]
  def change
    remove_column :reserves, :question_id, :string
  end
end
