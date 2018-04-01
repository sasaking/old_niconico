class CreateEventPostingPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :event_posting_periods do |t|
      t.string :event_id
      t.date :effective_start
      t.date :effective_end

      t.timestamps
    end
  end
end
