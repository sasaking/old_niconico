@how_many_dummy.times do |n|
  figure = format "%03d", n
  EventPostingPeriod.create!(
    event_id: "ev#{@basedate}#{figure}",
    effective_start: DateTime.now,
    effective_end: DateTime.now + 3
  )
end
