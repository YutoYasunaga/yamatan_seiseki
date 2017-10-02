# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |i|
  Student.create(
    name: Faker::Name.name,
    code: "2820#{'%02d' % i}",
    department: ['情報メディア学科', '児童教育学科', '初等教育学専攻'].sample,
    enter_school_year: [2014, 2015, 2016].sample,
    password: 'yamatan',
    password_confirmation: 'yamatan'
  )
end
