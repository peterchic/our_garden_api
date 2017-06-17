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
farmer_product = FarmerProduct.create([{farmer_id: 3, product_id: 1, quantity: 30, price: 2.5}])
farmer_product = FarmerProduct.create([{farmer_id: 3, product_id: 6, quantity: 19, price: 5}])
farmer_product = FarmerProduct.create([{farmer_id: 8, product_id: 7, quantity: 12, price: 4.2}])
farmer_product = FarmerProduct.create([{farmer_id: 8, product_id: 9, quantity: 45, price: 0.5}])
farmer_product = FarmerProduct.create([{farmer_id: 8, product_id: 3, quantity: 11, price: 3.5}])
farmer_product = FarmerProduct.create([{farmer_id: 9, product_id: 5, quantity: 60, price: 8}])
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

Product.create([{name:"Zucchini", description:"Zucchini in season. Pick yours up today!", picture:"https://static.meijer.com/Media/000/00000/0000000040679_a1c1_0200.png"}])
Product.create([{name:"Sweet Potatoes", description:"Sweet Potatoes are the healthiest of all potatoes!", picture:"https://d2lnr5mha7bycj.cloudfront.net/product-image/file/primary_55575dbe-fbb3-4486-b3fa-20b5263986f4.jpg"}])
Product.create([{name:"Strawberries", description:"Red and ready to eat.", picture:"http://www.whatsfresh.co.nz/images/produce/strawberries-200x200.jpg"}])
Product.create([{name:"Tomatos", description:"What would-ah Momma think if you didn't buy her tomatos?", picture:"http://www.weallnepali.com/_/rsrc/1341542807038/recipe/achar-1/tomatoachar/tomato.jpg?height=200&width=200"}])
Product.create([{name:"Apples", description:"Apple a day keeps the doctor away.", picture:"https://mnhardy.umn.edu/sites/mnhardy.umn.edu/files/styles/panopoly_image_original/public/apples_haralson.jpg?itok=xEbAgMdP"}])
Product.create([{name:"Celery", description:"Eat too much and they're poisonous!", picture:"http://www.smart-fertilizer.com/Cms_Data/Contents/smart-esp/Media/Crop/celery.jpg"}])
Product.create([{name:"Carrots", description:"Great for night vision and plenty of vitamins!", picture:"https://sowtrueseed-7b55.kxcdn.com/wp-content/uploads/2015/08/t-carrots.jpg"}])
Product.create([{name:"Garlic", description:"Huge for immunity", picture:"https://crapesinbloom.locallygrown.net/files/product/image/85996/small/Silver_White___Silverskin__Garlic.jpg?1350617198"}])
Product.create([{name:"Watermelon", description:"Nothing better than enjoying watermelon in the summertime!", picture:"http://www.mibba.com/data/images/content/articles/ec/23f584ce.jpg"}])
Product.create([{name:"Spanish Onions", description:"Super spanish and super tasty.", picture:"https://sowtrueseed.com/wp-content/uploads/2015/08/v-onion-walla-walla-sweet-spanish.jpg"}])
