class ChangeDatatypeAllDayFlgOfReservePeriods < ActiveRecord::Migration[5.0]
  def change
      change_column :reserve_periods, :all_day_flg, 'integer USING CAST(all_day_flg AS integer)'
  end
end
