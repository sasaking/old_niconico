class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :reserve_period_id, :string, null: false
    add_column :events, :effective_start, :time, null: false
    add_column :events, :effective_end, :time, null: false
  end
end
