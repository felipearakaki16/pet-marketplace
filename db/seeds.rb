require 'faker'

puts 'Creating 30 fake users...'
30.times do
  user = User.new(
    name: Faker::Name.first_name ,
    email: Faker::Internet.email,
    password: "123456"
  )
  user.save!
end
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
