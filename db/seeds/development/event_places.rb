address = Faker::Address
@how_many_dummy.times do |n|
  figure = format "%03d", n
  EventPlace.create!(
    event_place_id: "ep#{@basedate}#{figure}",
    event_place_name: Faker::Book.title.to_s,
    event_place_address: "#{address.state}#{address.city}#{address.building_number}",
    event_place_url: Faker::Internet.url
  )
end
