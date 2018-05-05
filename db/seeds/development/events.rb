@how_many_dummy.times do |n|
  figure = format "%03d", n
  Event.create!(
    event_id: "ev#{@basedate}#{figure}",
    reserve_period_id: "rp#{@basedate}#{figure}",
    event_date: Date.today - 7 * n,
    event_start_time: Time.now,
    event_end_time: Time.now + (60 * 60 * 1),
    event_title: Faker::Book.title.to_s,
    event_content: Faker::Lorem.paragraph.to_s,
    event_fee: Faker::Number.number(4),
    art_id_1: "art#{@basedate}#{figure}",
    art_id_2: "",
    remarks: Faker::Lorem.paragraphs(2).to_s,
    effective_start: DateTime.now,
    effective_end: DateTime.now + 3
  )
end
