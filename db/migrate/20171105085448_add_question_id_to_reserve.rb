class AddQuestionIdToReserve < ActiveRecord::Migration[5.0]
  def change
    add_column :reserves, :quesion_id, :integer
  end
end
