class RemoveEventPlaceIdToEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :event_place_id, :string
  end
end
