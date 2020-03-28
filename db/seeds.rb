professions = ["Fontanería", "Pintura", "Carpintería", "Electricidad", "Albañilería", "Lampistería", "Parquetista", "Otro"]

professions.each do |profession|
  Profession.create!(name: profession, cost: 20.0)
end
# Profession.create!(name: "Fontaneria", cost: 20.00)
# Profession.create!(name: "Pintura", cost: 20.00)
# Profession.create!(name: "Carpinteria", cost: 20.00)
# Profession.create!(name: "Electrico", cost: 20.00)
# Profession.create!(name: "Construccion", cost: 20.00)
# Profession.create!(name: "Gas y Calefaccion", cost: 20.00)
# Profession.create!(name: "Techos", cost: 20.00)
# Profession.create!(name: "Yeso", cost: 20.00)
