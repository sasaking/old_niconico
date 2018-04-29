@how_many_dummy.times do |n|
  figure = format "%03d", n
  jp_last = Faker::Name.last_name
  jp_first = Faker::Name.first_name
  jp_first_child = Faker::Name.first_name
  Reserve.create!(
    reserve_id: "rsv#{@basedate}#{figure}",
    event_id: "ev#{@basedate}#{figure}",
    name: "#{jp_last} #{jp_first}",
    kana: "#{jp_last} #{jp_first}".to_kanhira.to_kana,
    child_name: "#{jp_last} #{jp_first_child}",
    child_kana: "#{jp_last} #{jp_first_child}".to_kanhira.to_kana,
    email: Faker::Internet.email,
    tel: Faker::PhoneNumber.cell_phone,
    reserve_period_id: "rp#{@basedate}#{figure}",
    beginner_flg: n % 4 == 0 ? 1 : 0,
    question_id: "qt#{@basedate}#{figure}",
    remarks: Faker::Lorem.paragraphs(4)
  )
end

