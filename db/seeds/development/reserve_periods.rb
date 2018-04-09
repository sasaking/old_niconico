basedate = Date.today.strftime "%Y%m%d"
@how_many_dummy.times do |n|
  figure = format "%03d", n
  ReservePeriod.create!(
    reserve_period_id: "rp#{basedate}#{figure}",
    event_place_id: "ep#{basedate}#{figure}",
    all_day_flg: n % 3 == 0 ? "0" : "1",
    reserve_start_time: Time.now,
    reserve_end_time: Time.now + 60 * 60 * ((n % 4) == 0 ? 1 : (n % 4)),
    reserve_limited_number: rand(20..50)
  )
end
