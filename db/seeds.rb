# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
john = User.create!(
  name: "John Doe",
  email: "john.doe@example.com",
  worked_hours: 0
)

jane = User.create!(
  name: "Jane Doe",
  email: "jane.doe@example.com",
  worked_hours: 0
)
Project.create!(
  [
    {
      name: "Button color change",
      user: john,
      hours: 2,
      date_start: "2020-03-20",
      date_end: "2020-03-21"
    },
    {
      name: "Create content",
      user: jane,
      hours: 12,
      date_start: "2020-03-22",
      date_end: "2020-03-24"
    },
    {
      name: "Button color change",
      user: john,
      hours: 2,
      date_start: "2020-03-20",
      date_end: "2020-03-21"
    },
  ]
)