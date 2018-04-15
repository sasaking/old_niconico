@how_many_dummy.times do |n|
  figure = format "%03d", n
  Art.create!(
    art_id: "art#{@basedate}#{figure}",
    effective_start: DateTime.now,
    effective_end: DateTime.now + 7,
    art_name: Faker::Book.title.to_s,
    art_type: "Photo"
  )
end
