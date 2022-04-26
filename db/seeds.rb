Product.destroy_all
ProductCategory.destroy_all
Restaurant.destroy_all
Category.destroy_all

puts "Criando Categorias"

path_image = 'public/images/categories/mexican.jpeg'
c = Category.create(id: 1, title: 'mexicana')
c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

path_image = 'public/images/categories/italian.jpeg'
c = Category.create(id: 2, title: 'italiana')
c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

path_image = 'public/images/categories/japonesa.jpeg'
c = Category.create(id: 3, title: 'japonesa')
c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

path_image = 'public/images/categories/vegan.jpeg'
c = Category.create(id: 4, title: 'vegana')
c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')

path_image = 'public/images/categories/peruvian.jpeg'
c = Category.create(id: 5, title: 'peruana')
c.image.attach(io: File.open(path_image), filename: 'peruana.jpg')

puts 'Cadastrando Restaurantes'

# Mexican Restaurant
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create (
    name: 'Los Sombreros',
    description: 'Nossa missão tem sido ajudar as pessoas a alcanãr seus objetivos de saúde e bem estar.',
    delivery_tax: 5.50,
    city: 'São Paulo', street: 'Bela Terra',
    number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attah(io: File.open(path_image), filename: '1.png')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg.jpeg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com Milho', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg2.jpeg'), filename: 'nachosg2.jpg')

# Italian Restaurant
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create (
    name: 'Mamamia',
    description: 'Nossa missão tem sido ajudar as pessoas a alcanãr seus objetivos de saúde e bem estar.',
    delivery_tax: 5.50,
    city: 'São Paulo', street: 'Bela Terra',
    number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attah(io: File.open(path_image), filename: '1.png')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg.jpeg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com Milho', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg2.jpeg'), filename: 'nachosg2.jpg')

# Japanese Restaurant
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create (
    name: 'Takahashi',
    description: 'Nossa missão tem sido ajudar as pessoas a alcanãr seus objetivos de saúde e bem estar.',
    delivery_tax: 5.50,
    city: 'São Paulo', street: 'Bela Terra',
    number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attah(io: File.open(path_image), filename: '1.png')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg.jpeg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com Milho', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg2.jpeg'), filename: 'nachosg2.jpg')

# Vegan Restaurant
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create (
    name: 'Greenfoods',
    description: 'Nossa missão tem sido ajudar as pessoas a alcanãr seus objetivos de saúde e bem estar.',
    delivery_tax: 5.50,
    city: 'São Paulo', street: 'Bela Terra',
    number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attah(io: File.open(path_image), filename: '1.png')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg.jpeg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com Milho', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg2.jpeg'), filename: 'nachosg2.jpg')

# Peruvian Restaurant
path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create (
    name: 'La Cabra',
    description: 'Nossa missão tem sido ajudar as pessoas a alcanãr seus objetivos de saúde e bem estar.',
    delivery_tax: 5.50,
    city: 'São Paulo', street: 'Bela Terra',
    number: '1393', neighborhood: 'Mercês', category_id: 1
)
r.image.attah(io: File.open(path_image), filename: '1.png')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg.jpeg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com Milho', product_category: pc)
prod.image.attach(io: File.open('public/image/products/nachosg2.jpeg'), filename: 'nachosg2.jpg')