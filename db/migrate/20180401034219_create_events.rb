class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_id
      t.string :event_place_id
      t.date :event_date
      t.time :event_start_time
      t.time :event_end_time
      t.string :event_title
      t.text :event_content
      t.integer :event_fee
      t.string :art_id_1
      t.string :art_id_2
      t.text :remarks

      t.timestamps
    end
  end
end
