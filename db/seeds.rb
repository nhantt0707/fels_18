User.create!(name:  "Truong Thinh",
             email: "nguyen.truong.thinh@framgia.com",
             password:              "123123",
             password_confirmation: "123123",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123123"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end