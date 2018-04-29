class CreateEventPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :event_places do |t|
      t.string :event_place_id
      t.string :event_place_name
      t.string :event_place_address
      t.string :event_place_url

      t.timestamps
    end
  end
end
