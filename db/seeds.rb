require 'faker'

User.destroy_all
# Twat.destroy_all

# 30.times do {

# }

30.times do
  email = Faker::Internet.email
  name = Faker::Name.name
  password = Faker::Internet.password

  user = User.create!(email: email, password: password)

  p user
end


