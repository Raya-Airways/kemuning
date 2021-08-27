# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create!([
  {id: 1, code: "17000.001", title: "Request Legal Review", security: nil, position: "1.X", description: "HOD request legal department assistance to review obligatory letters including but not limited to NDA, LOA, LOU and agreements.", created_by: nil, updated_by: nil, created_at: "2021-08-24 09:15:58", updated_at: "2021-08-27 05:22:02"}
])
Position.create!([
  {id: 1, code: 1, parent_id: nil, name: "GMD", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 03:41:42", updated_at: "2021-08-24 04:22:07"},
  {id: 2, code: 0, parent_id: 1, name: "Strategy & Project Management", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:05:45", updated_at: "2021-08-24 04:23:54"},
  {id: 3, code: 1, parent_id: 1, name: "Business Development", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 03:58:44", updated_at: "2021-08-24 04:23:14"},
  {id: 4, code: 2, parent_id: 1, name: "Operations", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:00:10", updated_at: "2021-08-24 04:23:32"},
  {id: 5, code: 3, parent_id: 1, name: "Quality Assurance", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:01:32", updated_at: "2021-08-24 04:23:43"},
  {id: 6, code: 4, parent_id: 1, name: "Safety Management Systems", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:01:51", updated_at: "2021-08-24 04:24:26"},
  {id: 7, code: 5, parent_id: 1, name: "Internal Audit", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:02:05", updated_at: "2021-08-24 04:24:59"},
  {id: 8, code: 6, parent_id: 1, name: "Risk Management", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:03:39", updated_at: "2021-08-24 04:25:12"},
  {id: 9, code: 7, parent_id: 1, name: "Legal & Secretarial Services", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:03:21", updated_at: "2021-08-24 04:25:20"},
  {id: 10,code: 8, parent_id: 1, name: "Finance", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:04:00", updated_at: "2021-08-24 04:24:47"},
  {id: 11,code: 9, parent_id: 1, name: "People Management & Corporate Services", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:04:22", updated_at: "2021-08-24 04:24:37"},
  {id: 12,code: 10, parent_id: 1, name: "Digital", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:04:42", updated_at: "2021-08-24 04:24:06"},
  {id: 13, code: 1, parent_id: 4, name: "CAMO", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:27:16", updated_at: "2021-08-24 04:27:16"},
  {id: 14, code: 2, parent_id: 4, name: "AMO", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:38:13", updated_at: "2021-08-24 04:38:13"},
  {id: 15, code: 3, parent_id: 4, name: "Flight Operations", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:38:36", updated_at: "2021-08-24 04:38:36"},
  {id: 16, code: 4, parent_id: 4, name: "Airline Operations", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:39:06", updated_at: "2021-08-24 04:39:06"},
  {id: 17, code: 5, parent_id: 4, name: "Ground Operations", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:39:23", updated_at: "2021-08-24 04:39:23"},
  {id: 18, code: 6, parent_id: 4, name: "Aviation Security", mission: "", created_by: nil, updated_by: nil, created_at: "2021-08-24 04:39:49", updated_at: "2021-08-24 05:01:32"}
])
