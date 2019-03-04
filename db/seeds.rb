User.destroy_all
Company.destroy_all
Claim.destroy_all

30.times do
  User.create(
    email: Faker::Internet.email,
    password: 123456
  )
end
users = User.all

20.times do
  Company.create(
    name: Faker::Company.name
  )
end
companies = Company.all

250.times do
  Claim.create(
    content: Faker::Company.type,
    company: companies.sample
  )
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if AdminUser.where(email: 'admin@example.com').blank?





