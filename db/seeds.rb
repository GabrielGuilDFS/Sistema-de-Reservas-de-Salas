require 'faker'

User.create!(
  name: "ADM Teste",
  email: "admin@gmail.com",
  password: "1234567",
  password_confirmation: "1234567",
  role: :admin,
  department: "Administração"
)

5.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: "123456",
    password_confirmation: "123456",
    role: :professor,
    department: Faker::Educator.subject
  )
end

10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: "123456",
    password_confirmation: "123456",
    role: :aluno,
    department: Faker::Educator.degree
  )
end
