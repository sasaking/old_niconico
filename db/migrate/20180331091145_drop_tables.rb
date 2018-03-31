class DropTables < ActiveRecord::Migration[5.0]
  def change
    # drop tables
    drop_table :events
    drop_table :main_pages
    drop_table :reserves
  end
end
