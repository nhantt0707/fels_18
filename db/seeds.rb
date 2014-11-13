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
# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

10.times do |n|
  name  = Faker::Lorem.sentence
  Category.create! name:  name
end

100.times do |n|
  english  = Faker::Lorem.word
  category_id = n/10 + 1
  Word.create!(english:  english,
               category_id: category_id)
end

100.times do |n|
  content  = Faker::Lorem.word
  correct = true;
  word_id = n+1;
  Answer.create!(content:  content,
                 correct: correct,
                 word_id: word_id)

  3.times do |m|
    content  = Faker::Lorem.word
    correct = false;
    Answer.create!(content:  content,
                   correct: correct,
                   word_id: word_id)
  end
end