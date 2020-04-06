professions = ["Fontanería", "Pintura", "Carpintería", "Electricidad", "Albañilería", "Lampistería", "Parquetista", "Pladur"]

professions.each do |profession|
  Profession.create!(name: profession, cost: 20.0)
end

# TODO CREATE USERS AND PROFESSIONALS FOR SEED FILE

100.times do
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

5.times do
  Profession.all.each do |profession|
    user = User.find(rand(1..User.count))
    if user.profession_ids.include?(profession.id)
      next
    else
      user.add_profession(profession.id)
      user.contractor_name = "#{user.first_name} #{profession.name}"
      user.bio = Faker::Lorem.paragraph
      user.save
    end
  end
end
