# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Amoeba.create([
  { name: "Natalie", generation: 1 }, 
  { name: "Amber",   generation: 2 },
  { name: "Chris",   generation: 3 },
  { name: "Justin",  generation: 4 }
  ])

Talent.create([
  { name: "Dancing" }, 
  { name: "Singing" }, 
  { name: "Acrobatics" }
  ])

Act.create([
  { name: "Magic Show",  time_of_performance: "June 1, 2014" },
  { name: "Circus Show", time_of_performance: "July 1, 2014"}
  ])

Amoeba.all.each { |amoeba|
  amoeba.talent = Talent.all[rand(Talent.all.size)]
  amoeba.save
}

Act.first.amoebas << [Amoeba.first, Amoeba.second]
Act.second.amoebas << [Amoeba.first, Amoeba.third, Amoeba.fourth]