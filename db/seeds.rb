# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

  shifts = [
    [ 1, "2019-03-08T16:21:32Z", "2019-03-08T19:21:24Z", "Chef", "yesterday", "today" ],
    [ 1, "2019-03-07T16:21:32Z", "2019-03-07T19:21:24Z", "Chef", "yesterday", "today" ]
  ]

  shifts.each do |user_id, start_at, end_at, role, created_at, updated_at|
    Shift.create( user_id: user_id, start_at: Date.current, end_at: Date.current, role: role )
  end

end
