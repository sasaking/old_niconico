# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale = :ja
@how_many_dummy = 100
@basedate = Date.today.strftime "%Y%m%d"
# get all tables
table_names = ActiveRecord::Base.connection.tables
table_names.each do |t|
  path = Rails.root.join('db', 'seeds', Rails.env, "#{t}.rb")
  if File.exist?(path)
    puts "Create test data for #{t} ..."
    require path
  end
end
