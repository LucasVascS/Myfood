Product.destroy_all
ProductCategory.destroy_all
Restaurant.destroy_all
Category.destroy_all

puts "Criando Categorias"

path_image = 'public/images/categories/mexican.png'
c = Category.create(id: 1, title: 'mexicana')
c.image.attach(io: File.open(path_image), filename: 'mexican.png')

path_image = 'public/images/categories/italian.png'
c = Category.create(id: 2, title: 'italiana')
c.image.attach(io: File.open(path_image), filename: 'italian.png')

path_image = 'public/images/categories/japonese.png'
c = Category.create(id: 3, title: 'japonese')
c.image.attach(io: File.open(path_image), filename: 'japonese.png')

path_image = 'public/images/categories/vegan.png'
c = Category.create(id: 4, title: 'vegana')
c.image.attach(io: File.open(path_image), filename: 'vegan.png')

path_image = 'public/images/categories/peruana.png'
c = Category.create(id: 5, title: 'peruana')
c.image.attach(io: File.open(path_image), filename: 'peruana.png')

puts 'Cadastrando Restaurantes'

# Mexican Restaurant
path_image = 'public/images/restaurants/1.png'
r = Restaurant.create!(
    name: 'Los Sombreros',
    description: 'Mexicana de verdade, aqui não tem cucaratcha.',
    delivery_tax: 5.50,
    city: 'São Paulo', street: 'Bela Terra',
    number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attah(io: File.open(path_image), filename: '1.png')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com Milho', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')

# Italian Restaurant
path_image = 'public/images/restaurants/2.jpeg'
r = Restaurant.create!(
    name: 'Mamamia',
    description: 'Massa de verdade, não a mistureba que os brasileiros fazem.',
    delivery_tax: 5.50,
    city: 'Rio de Janeiro', street: 'Angra dos Reis',
    number: '1245', neighborhood: 'Compasso', category_id: 2
)
r.image.attah(io: File.open(path_image), filename: '2.png')
pc = ProductCategory.create!(title: 'Pratos Italianos', restaurant: r)
prod = Product.create!(name: 'Macarronada', price: 20, description: 'Macarrão do balacubaco', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')
prod = Product.create!(name: 'Pizza', price: 30, description: 'A verdadeira Pizza Italiana', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')

# Japanese Restaurant
path_image = 'public/images/restaurants/3.jpeg'
r = Restaurant.create!(
    name: 'Takahashi',
    description: 'Peixe e outras coisas mais, tudo cru. O gás está muito caro',
    delivery_tax: 5.50,
    city: 'Ceará', street: 'Fortaleza',
    number: '2354', neighborhood: 'Beira-Mar', category_id: 3
)
r.image.attah(io: File.open(path_image), filename: '3.png')
pc = ProductCategory.create!(title: 'Pratos Japoneses', restaurant: r)
prod = Product.create!(name: 'Wasabe', price: 19, description: 'Wasabe do bom', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')
prod = Product.create!(name: 'Peixecru', price: 19, description: 'Suchi para os orientais', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')

# Vegan Restaurant
path_image = 'public/images/restaurants/4.jpeg'
r = Restaurant.create!(
    name: 'Greenfoods',
    description: 'Para quebrar o paradigma do pão de queijo, aqui tem tudo menos pão de queijo.',
    delivery_tax: 5.50,
    city: 'Mato Grosso', street: 'Minas Gerais',
    number: '5874', neighborhood: 'Trem Bão', category_id: 4
)
r.image.attah(io: File.open(path_image), filename: '4.png')
pc = ProductCategory.create!(title: 'Pratos Veganos', restaurant: r)
prod = Product.create!(name: 'Feijão Tropeiro', price: 25, description: 'Feixão com muita, mas muita coisa dentro', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')
prod = Product.create!(name: 'Cozidão', price: 15, description: 'Muita coisa cozida, exceto animais e seus derivados', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')

# Peruvian Restaurant
path_image = 'public/images/restaurants/5.jpeg'
r = Restaurant.create!(
    name: 'La Cabra',
    description: 'Churrasco e é isso, tem coisa melhor ?',
    delivery_tax: 5.50,
    city: 'Rio Grande do Sul', street: 'Santa Catarina',
    number: '5876', neighborhood: 'Dos confins', category_id: 5
)
r.image.attah(io: File.open(path_image), filename: '5.png')
pc = ProductCategory.create!(title: 'Pratos Peruanos', restaurant: r)
prod = Product.create!(name: 'Churrascão', price: 40, description: 'Carne da boa', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')
prod = Product.create!(name: 'Churrascada PRIME', price: 110, description: 'Todo e qualquer tipo de mamífero e réptil comestivel, no espeto', product_category: pc)
prod.image.attach(io: File.open('public/images/products/generic.png'), filename: 'generic.png')