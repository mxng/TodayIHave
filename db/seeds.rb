puts "Destroying all data"
User.destroy_all
Post.destroy_all
Tag.destroy_all
Update.destroy_all
puts "Destruction complete"

puts "Creating 1 user"
User.create(email: "hi@silverpierce.com", password: "123123")
puts "Ceated #{User.first.email}"

puts "Creating 5 tags"
Tag.create(name: "css")
Tag.create(name: "bugfix")
Tag.create(name: "webdesign")
Tag.create(name: "testing")
Tag.create(name: "unittests")
puts "Created"
