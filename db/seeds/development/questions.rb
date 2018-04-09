basedate = Date.today.strftime "%Y%m%d"
@how_many_dummy.times do |n|
  figure = format "%03d", n
  Question.create!(
    question_id: "qt#{basedate}#{figure}",
    event_place_id: "ep#{basedate}#{figure}",
    question_content: Faker::Lorem.paragraphs(3)
  )
end
