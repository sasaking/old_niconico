class CreateReservePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :reserve_periods do |t|
      t.string :reserve_period_id
      t.string :event_place_id
      t.string :all_day_flg
      t.time :reserve_start_time
      t.time :reserve_end_time
      t.integer :reserve_limited_number

      t.timestamps
    end
  end
end
