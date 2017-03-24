# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

#These will create arrays of the ActiveRecord entries we need.
#subjects JSON file
subjects = File.read("db/subject.json")
subs = JSON.parse(subjects)

#courses JSON file
courses = File.read("db/course.json")
cour = JSON.parse(courses)

#instructors JSON file
instructors = File.read("db/instructor.json")
insts = JSON.parse(instructors)

#Now, let's fill the tables...
#I will fill in the join tables soon.
subs.each do |s|
  Subject.create(id_number: s["id"], name: s["name"])
end

cour.each do |c|
  temp = Course.create(name: c["name"], code: c["code"], description: c["description"],
  independent_study: c["independent_study"])
  c["subjects"].each do |subject_id| # Have to do this since each subject has a different id...
    #temp.subjects << subs.select { |subject| subject["id"].eql?(subject_id["id"]) }
    temp.subjects << Subject.where("id_number LIKE ?", subject_id["id"])
  end
  temp.save
end

insts.each do |i|
  Instructor.create(id_number: i["id"], first: i["first"], last: i["last"],
  email: i["email"])
end

#Need to do this again because of how the work flow goes.
Subject.each do |s|
  Course.each do |c|
    if c.subjects.include?(s.id)
      s.courses << c
    end
  end
end
