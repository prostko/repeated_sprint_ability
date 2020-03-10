# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sprint = Sprint.create!(beginning: 4.weeks.ago, ending: 2.weeks.ago)

tickets_data = [
  {
    name: 'SC-1: Initial Ticket',
    description: 'initial seed tickets',
    sprint_id: sprint.id,
    point_estimate: 3,
    dev_begin_at: 4.weeks.ago,
    dev_end_at: 3.weeks.ago,
    merged_at: 2.weeks.ago,
    bounces: 1
  },
  {
    name: 'SC-2: Second Ticket',
    description: 'initial seed tickets; second',
    sprint_id: sprint.id,
    point_estimate: 3,
    dev_begin_at: 3.weeks.ago,
    dev_end_at: 3.weeks.ago,
    merged_at: 2.weeks.ago,
    bounces: 0
  }
]


tickets = sprint.tickets.create(tickets_data)
