class AddColumnReserves < ActiveRecord::Migration[5.0]
  def change
    add_column :reserves, :answer, :integer, null: false
    add_column :reserves, :answer_content, :text
    add_column :reserves, :status, :integer, null: false
  end
end
