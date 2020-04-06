professions = ["Fontanería", "Pintura", "Carpintería", "Electricidad", "Albañilería", "Lampistería", "Parquetista", "Otro"]

professions.each do |profession|
  Profession.create!(name: profession, cost: 20.0)
end

# TODO CREATE USERS AND PROFESSIONALS FOR SEED FILE

20.times do
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              age: (18..60).to_a.sample,
              phone_number: Faker::PhoneNumber.phone_number,
              location: Faker::Address.full_address,
              contractor: false,
              email: Faker::Internet.safe_email,
              password: "123456"
              )
end

Profession.all.each_with_index do |profession, index|
  user = User.all[index]
  user.add_profession(profession.name)
  user.contractor_name = "#{user.first_name} #{profession.name}"
  user.bio = Faker::Lorem.paragraph
  user.save
end
