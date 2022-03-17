# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Tree.destroy_all
User.destroy_all

puts "Creating users..."
# paul = User.create(first_name: 'Paul', last_name: 'Schauss', email: 'paul@localhost.me', password: '123456')
# jo = User.create(first_name: 'Joséphine', last_name: 'Lazzaris', email: 'josephine@arbre.com', password: '123456')
# ben = User.create(first_name: 'Ben', last_name: 'Boisson', email: 'ben@arbre.fr', password: 'secret')

paul = User.create(email: 'paul@localhost.me', password: '123456')
jo = User.create(email: 'josephine@arbre.com', password: '123456')
ben = User.create(email: 'ben@arbre.fr', password: 'secret')

puts "Creating trees..."
pommier = { name: "Pommier de polo",
            price: 180,
            address: "7 Boundary St, London E2 7JE",
            quantity_per_year: 8,
            fruit: "pomme",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras suscipit sagittis efficitur. Fusce at laoreet nibh.",
            user: paul }

poirier = { name: "Poirier de benjos",
            price: 180,
            address: "56A Shoreditch High St, London E1 6PQ",
            quantity_per_year: 12,
            fruit: "poire",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras suscipit sagittis efficitur. Fusce at laoreet nibh.",
            user: ben }

cocotier = { name: "Cocotier de jojo",
             price: 180,
             address: "6 rue des capucins, Lyon 69002",
             quantity_per_year: 4,
             fruit: "noix de coco",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
             short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras suscipit sagittis efficitur. Fusce at laoreet nibh.",
             user: jo }

[pommier, poirier, cocotier].each do |attributes|
  tree = Tree.create!(attributes)
  puts "Created #{tree.name}"
end
puts "Finished!"
