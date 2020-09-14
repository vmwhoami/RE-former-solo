5.times do |user|
  User.create!(
  name:"Adam #{user}",
  email:"adam#{user}@gmail.com",
  password:"12#{user}345"
  )
end

puts "the User table has been created"