puts 'Creating 10 fake users...'

  user = User.new(
    name: ['Maria'],
    email: ['Maria@teste.com'],
    password: "123456"
  )
  
  user = User.new(
    name: ['Marco Antônio'],
    email: ['MarcoAntônio@teste.com'],
    password: "123456"
  )

  user = User.new(
    name: ['Joaquim'],
    email: ['Joaquim@teste.com'],
    password: "123456"
  )

  user = User.new(
    name: ['Eduardo'],
    email: ['Eduardo@teste.com'],
    password: "123456"
  )

  user = User.new(
    name: ['Ricardo'],
    email: ['Ricardo@teste.com'],
    password: "123456"
  )

  user = User.new(
    name: ['Mara'],
    email: ['Mara@teste.com'],
    password: "123456"
  )
  
  user = User.new(
    name: ['Renata'],
    email: ['Renata@teste.com'],
    password: "123456"
  )

  user = User.new(
    name: ['Arlinda'],
    email: ['Arlinda@teste.com'],
    password: "123456"
  )

  user = User.new(
    name: ['Eugênia'],
    email: ['Eugênia@teste.com'],
    password: "123456"
  )
  
  
  
  
  
  user.save!







puts 'Finished users!'

puts 'Creating 10 fake products...'
10.times do
  product = Product.new(
    name: ['Coleira', 'Aquário', 'Bolinha', 'Chicletinho', 'Mantinha', 'Arranhador', 'Cobertor', 'Petisco', 'Ração', 'Remédio', 'Bebedouro'].sample,
    price: rand(1..99),
    description: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, c",
    user_id: rand(1..30),
    brand: ['Whiskas', 'Pedigree', 'Sunrise', 'Eternal', 'GoodFoods', 'Alpiste', 'Sao Lourenço', 'Itajaí', 'Alpargatos'],
    tag_list: ['Dogs', 'Cats', 'Fishes', 'Birds'].sample
  )
  product.save!
end
puts 'Finished products!'
