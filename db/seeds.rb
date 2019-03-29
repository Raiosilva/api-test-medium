
puts "Cadastrando tipos de profissões"

  profession = %w{Teacher Manager Developer}

  profession.each do |profession|
    Profession.create!(
      name: profession
    )
  end

puts "Profissões cadastradas"
###########################################
puts "Cadastrando Usuários"

  5.times do |i|
    User.create!(
      name: Faker::Name.name,
      email:  Faker::Internet.email,
      password:  Faker::Internet.password(6),
      profession: Profession.all.sample
    )
  end

puts "Usuários cadastrados"
###########################################
###########################################
puts "Cadastrando Endereços"

  User.all.each do |user|
    address = Address.create(
      street:  Faker::Address.street_address,
      city:  Faker::Address.city,
      state:  Faker::Address.state,
      country:  Faker::Address.country,
      user: user
    )
  end

puts "Endereços cadastrados"
##########################################
