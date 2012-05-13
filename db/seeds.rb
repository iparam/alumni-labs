# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u=User.create(name:"Amar Daxini",email: "amardaxini@gmail.com",password: "Admin123",password_confirmation: "Admin123")
u.add_role("super_admin")
un =UserProfile::UniversityProfile.create(name: "K.J Somaiya C.O.E",address: "Vidyanagar, Vidyavihar(E), Mumbai - 400 077, Maharashtra, India.")
un.university_courses.create(name: "Information Technology")