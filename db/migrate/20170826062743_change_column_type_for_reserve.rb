class ChangeColumnTypeForReserve < ActiveRecord::Migration[5.0]
  def change
    change_column :reserves, :child_age, :string
    change_column :reserves, :tel, 'integer USING CAST(tel AS Integer)'
    change_column :reserves, :reserve_period, 'integer USING CAST(reserve_period AS Integer)'
    change_column :reserves, :beginner, 'integer USING CAST(beginner AS Integer)'
   # change_column :reserves, :question_id, 'integer USING CAST(question_id AS Integer)'
  end
end
