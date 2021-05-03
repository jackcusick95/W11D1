# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
    ToDo.destroy_all
  
    puts "Creating todos..."


    todo1 = ToDo.create!(title: "graduate a/A", body: "finsih fullstack", done: false)
    todo2 = ToDo.create!(title: "wash the dog", body: "soooooap", done: false)
    todo3 = ToDo.create!(title: "make dinner", body: "go grocery shopping", done: false)
    todo4 = ToDo.create!(title: "learn to cook", body: "jack needs lessons", done: false)

end
