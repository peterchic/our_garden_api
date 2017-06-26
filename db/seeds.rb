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


# 10.times do
#   Farmer.create([{
#     username: Faker::Superhero.name,
#     password_digest: 1,
#     name: Faker::Name.name,
#     bio: Faker::Lorem.paragraphs(1),
#     address: Faker::Address.street_address,
#     zip_code: Faker::Address.zip,
#     certified_organic: Faker::Boolean.boolean,
#     local: Faker::Boolean.boolean,
#     picture: Faker::Avatar.image,
#     }])
# end

Farmer.create([{username:'Fred Williams', password_digest:'1', name:'Fred Williams', bio:'Great up in Southern Kentucky where I learned to grow corn, cattle and cranberries. Never stopped loving the dirt, and I reckon I never will.', address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/zKXY2Bz.jpg'}])
Farmer.create([{username:'Barney Gumble', password_digest:'1', name:'Daria Gumble', bio:"Farming is what I love to do when I'm not farming or fishing, or thinking about either of those other two options.", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/ZwduATy.jpg'}])
Farmer.create([{username:'Stacy Dash', password_digest:'1', name:'Stacy Dash', bio:"Farming is something I never thought I'd get into, but now that I have, I'm able to feed my family and create a small profit on the side.", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/pXuOPuX.jpg'}])
Farmer.create([{username:'Lenny Kravitz', password_digest:'1', name:'Lenny Kravitz', bio:"After I gave up singing, and fashion, I turned to mother nature. She provided me with everything I was missing in life. Now, I just want to give back to my community! I want to get away, I wanna flyyyy awayyyyy", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/6Bsrus5.jpg'}])
Farmer.create([{username:'Steven Segal', password_digest:'1', name:'Steven Segal', bio:"If there's one thing I taught myself, it's how to kick ass. You may ask yourself, what does that have to do with gardening? We'll, nothing! (Roundhouse kick to the head*)", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/ikOavoh.jpg'}])
Farmer.create([{username:'Austin Powers', password_digest:'1', name:'Austin Powers', bio:"I always had a green thumb, and after years of gardening, I found this site. Now I'm able to afford better materials for gardening and produce even better crops! Yeah babay!", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/GTYvIdT.jpg'}])
Farmer.create([{username:'Freddy Kreuger', password_digest:'1', name:'Freddy Kreuger', bio:'I garden when I sleep. You should too. See you there.', address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/FPVGzIY.jpg'}])
Farmer.create([{username:'Jennifer Lopez', password_digest:'1', name:'Jennifer Lopez', bio: "I'm still Jenny from the block, even though I used to have a little and now I have a lot, I still garden, and most importantly, I still know where I came from.", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/D3J3xP9.jpg'}])
Farmer.create([{username:'George Barnes', password_digest:'1', name:'George Barnes', bio: "It's it's from the earth, then it's good for the soul. I grow only organic produce and I'm dang proud of it too!", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/TSuq2LK.jpg'}])
Farmer.create([{username:'Tony Crespo', password_digest:'1', name:'Tony Crespo', bio:"As long as I can remember I was playing in the dirt. One day, my mama gave me a seed and I planted it in my backyard. And after 3 whole weeks, exactly where I planted this seed, was...nothing. I didn't touch gardening for another 30 years. But now I'm a full grown gardner actually making cash-money on these plants!", address:'', zip_code:'', certified_organic: true, local: true, picture: 'http://imgur.com/p0nC5Zz.jpg'}])



Product.create([{name:"Zucchini", description:"Zucchini is a popular variety of summer squash that can be consumed raw or cooked. The flower is also edible.", picture:"http://imgur.com/GFxFtAY.jpg"}])
Product.create([{name:"Sweet Potatoes", description:"Sweet potatoes are high in vitamin A, B5, B6, niacin, riboflavin, and, due to their orange color, are high in carotenoids.", picture:"http://imgur.com/CmXGvBh.jpg"}])
Product.create([{name:"Strawberries", description:"Strawberries are the only fruit that wear their seeds on the outside. The average berry is adorned with some 200 of them.", picture:"http://i.imgur.com/ZOU3TBP.jpg"}])
Product.create([{name:"Tomatos", description:"Because the tomato has seeds and grows from a flowering plant botanically it is classed as a fruit not a vegetable.", picture:"http://imgur.com/cCyFevh.jpg"}])
Product.create([{name:"Apples", description:"More than 2,500 varieties of apples are grown in the United States, but only the crabapple is native to North America.", picture:"http://imgur.com/tWDqn5O.jpg"}])
Product.create([{name:"Celery", description:"For most of recorded history, celery was used medicinally treating toothache, insomnia, rheumatism, anxiety & arthritis.", picture:"http://imgur.com/MKzHddQ.jpg"}])
Product.create([{name:"Carrots", description:"The veggie is an excellent source of vitamin A, providing more than 200% of your daily requirement in just one carrot.", picture:"http://imgur.com/2gjWEGk.jpg"}])
Product.create([{name:"Garlic", description:"Garlic is believed to ward off heart disease, cancer, colds, and flu. Garlic reduces the buildup of plaque in the arteries.", picture:"http://imgur.com/wKC7B8r.jpg"}])
Product.create([{name:"Watermelon", description:"Reduces nflammation that contributes to conditions like asthma, atherosclerosis, diabetes, colon cancer, and arthritis.", picture:"http://imgur.com/Z2R4Z1i.jpg"}])
Product.create([{name:"Onions", description:"Onions have been a part of the human diet for more than 7,000 years. Traces of onions have been discovered around 5000 B.C.", picture:"http://imgur.com/jPeLM45.jpg"}])
Product.create([{name:"Pears", description:"Before tobacco was introduced in Europe, pear leaves were smoked. Best when ripe and eaten with a peach.", picture:"http://imgur.com/8vVAcSS.jpg"}])
Product.create([{name:"Spinach", description:" Spinach is an excellent source of vitamin K, vitamin A, manganese, folate, magnesium, iron, copper, vitamin B2, and so on...", picture:"http://imgur.com/yeRXVLP.jpg"}])
