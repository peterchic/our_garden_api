# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# farmers = Farmer.create([{ username:"Joe", password_digest:"123", name:"Joe Berry", bio:"I love to farm, and I love to sell.", address: "123 Dirt Road, Jackson, NJ", zip_code: "07719", certified_organic: true, local: false, picture:"http://www.linkedIn.com/joeberry"}])
# strawberries = Product.create([{ name:"Strawberries", description:"Red and juicy. Filled with powerful antioxidants", picture:"http://www.google.com/strawberry"}])
# squash = Product.create([{name:"Green Squash", description:"Squash in season. Pick yours up today!", picture:"www.google.com/squash"}])
# cart = Cart.create([{user_id:1, active_cart: true}])
# review = Review.create([{farmer_id:1, user_id:1, review:"What a great location. Clean living!", rating: 5}])
farmer_product = FarmerProduct.create([{farmer_id: 1, product_id: 1, quantity: 30, price: 2}])
farmer_product = FarmerProduct.create([{farmer_id: 1, product_id: 2, quantity: 25, price: 4}])
farmer_product = FarmerProduct.create([{farmer_id: 1, product_id: 3, quantity: 66, price: 3.5}])
farmer_product = FarmerProduct.create([{farmer_id: 1, product_id: 4, quantity: 100, price: 6}])
farmer_product = FarmerProduct.create([{farmer_id: 2, product_id: 10, quantity: 15, price: 2}])
farmer_product = FarmerProduct.create([{farmer_id: 2, product_id: 4, quantity: 60, price: 1}])
farmer_product = FarmerProduct.create([{farmer_id: 2, product_id: 11, quantity: 41, price: 3}])
farmer_product = FarmerProduct.create([{farmer_id: 3, product_id: 5, quantity: 30, price: 2.5}])
farmer_product = FarmerProduct.create([{farmer_id: 3, product_id: 6, quantity: 19, price: 5}])
farmer_product = FarmerProduct.create([{farmer_id: 4, product_id: 7, quantity: 26, price: 2.5}])
farmer_product = FarmerProduct.create([{farmer_id: 4, product_id: 12, quantity: 79, price: 1}])
farmer_product = FarmerProduct.create([{farmer_id: 4, product_id: 8, quantity: 59, price: 3}])
farmer_product = FarmerProduct.create([{farmer_id: 5, product_id: 9, quantity: 12, price: 7}])
farmer_product = FarmerProduct.create([{farmer_id: 5, product_id: 6, quantity: 89, price: 0.75}])
farmer_product = FarmerProduct.create([{farmer_id: 6, product_id: 10, quantity: 8, price: 3.25}])
farmer_product = FarmerProduct.create([{farmer_id: 6, product_id: 2, quantity: 70, price: 1.75}])
farmer_product = FarmerProduct.create([{farmer_id: 7, product_id: 12, quantity: 83, price: 4}])
farmer_product = FarmerProduct.create([{farmer_id: 7, product_id: 14, quantity: 25, price: 2.25}])
farmer_product = FarmerProduct.create([{farmer_id: 8, product_id: 7, quantity: 12, price: 4.2}])
farmer_product = FarmerProduct.create([{farmer_id: 8, product_id: 9, quantity: 45, price: 0.5}])
farmer_product = FarmerProduct.create([{farmer_id: 8, product_id: 3, quantity: 11, price: 3.5}])
farmer_product = FarmerProduct.create([{farmer_id: 9, product_id: 1, quantity: 49, price: 3}])
farmer_product = FarmerProduct.create([{farmer_id: 9, product_id: 5, quantity: 60, price: 8}])
farmer_product = FarmerProduct.create([{farmer_id: 10, product_id: 8, quantity: 33, price: 4}])
farmer_product = FarmerProduct.create([{farmer_id: 10, product_id: 5, quantity: 23, price: 2}])
farmer_product = FarmerProduct.create([{farmer_id: 10, product_id: 11, quantity: 22, price: 7}])
# product_cart = ProductCart.create([{farmer_product_id: 1, cart_id:1}])


10.times do
  Farmer.create([{
    username: Faker::Superhero.name,
    password_digest: 1,
    name: Faker::Name.name,
    bio: Faker::Lorem.paragraphs(1),
    address: Faker::Address.street_address,
    zip_code: Faker::Address.zip,
    certified_organic: Faker::Boolean.boolean,
    local: Faker::Boolean.boolean,
    picture: Faker::Avatar.image,
    }])
end

Product.create([{name:"Zucchini", description:"Zucchini (Cucurbita pepo) is a popular variety of summer squash that can be consumed raw or cooked. Zucchinis were first brought to the United States in the 1920s by the Italians. The flower of the zucchini plant is edible. Fried squash blossoms are considered a delicacy.", picture:"http://i.imgur.com/RqPM752.jpg"}])
Product.create([{name:"Sweet Potatoes", description:"Sweet potatoes are high in vitamin A, vitamin B5, B6, thiamin, niacin, riboflavin, and, due to their orange color, are high in carotenoids.", picture:"http://imgur.com/CmXGvBh.jpg"}])
Product.create([{name:"Strawberries", description:"Strawberries are the only fruit that wear their seeds on the outside. The average berry is adorned with some 200 of them.", picture:"http://i.imgur.com/ZOU3TBP.jpg"}])
Product.create([{name:"Tomatos", description:"Because the tomato has seeds and grows from a flowering plant botanically it is classed as a fruit not a vegetable.", picture:"http://imgur.com/cCyFevh.jpg"}])
Product.create([{name:"Apples", description:"More than 2,500 varieties of apples are grown in the United States, but only the crabapple is native to North America.", picture:"http://imgur.com/tWDqn5O.jpg"}])
Product.create([{name:"Celery", description:" From classical times to the Middle Ages, celery was used as a medicinal plant to treat toothache, insomnia, gout, rheumatism, anxiety and arthritis.", picture:"http://imgur.com/MKzHddQ.jpg"}])
Product.create([{name:"Carrots", description:"The veggie is an excellent source of vitamin A, providing more than 200% of your daily requirement in just one carrot.", picture:"http://imgur.com/2gjWEGk.jpg"}])
Product.create([{name:"Garlic", description:"Garlic is believed to ward off heart disease, cancer, colds, and flu. The consumption of garlic lowers blood cholesterol levels, and reduces the buildup of plaque in the arteries. It is also used to treat acne, warts, and toothaches.", picture:"http://imgur.com/wKC7B8r.jpg"}])
Product.create([{name:"Watermelon", description:"Not only does it quench your thirst, it can also quench inflammation that contributes to conditions like asthma, atherosclerosis, diabetes, colon cancer, and arthritis.", picture:"http://imgur.com/Z2R4Z1i.jpg"}])
Product.create([{name:"Onions", description:"Onions have been a part of the human diet for more than 7,000 years. Archeologists have discovered traces of onions dating back to 5000 B.C.", picture:"http://imgur.com/jPeLM45.jpg"}])
Product.create([{name:"Pears", description:"Before tobacco was introduced in Europe, pear leaves were smoked.", picture:"http://imgur.com/8vVAcSS.jpg"}])
Product.create([{name:"Spinach", description:" Spinach is an excellent source of vitamin K, vitamin A (in the form of carotenoids), manganese, folate, magnesium, iron, copper, vitamin B2, vitamin B6, vitamin E, calcium, potassium and vitamin C. It is a very good source of dietary fiber, phosphorus, vitamin B1, zinc, protein and choline.", picture:"http://imgur.com/yeRXVLP.jpg"}])
