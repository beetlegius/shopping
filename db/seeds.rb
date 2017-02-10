# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create! [
  { name: 'Shirts',  image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/categories/shirts.jpg' },
  { name: 'Watches', image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/categories/watches.jpg' },
  { name: 'Shoes',   image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/categories/shoes.jpg' },
  { name: 'Bags',    image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/categories/bags.jpg' }
]

Brand.create! [
  { name: 'Bitmule',    image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/clients/logo1.png' },
  { name: 'Rhodes',     image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/clients/logo2.png' },
  { name: 'Hungca',     image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/clients/logo3.png' },
  { name: 'Wonderloop', image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/clients/logo4.png' },
  { name: 'Foxter',     image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/clients/logo5.png' }
]

product1 = Product.create! name: 'Trendy Outfit', description: 'Objectively monetize web-enabled expertise whereas enabled growth successful strategies. Objectively monetize viral channels for leading-edge infrastructures. Energistically maximize high standards in communities without e-business growth strategies. Quickly aggregate.', price: 34, promotional_price: 22, body: 'Continually extend <a href="http://www.google.com">B2C</a> processes with emerging ROI. Efficiently deliver one-to-one channels with backend partnerships. Appropriately disintermediate just in time deliverables before premium niches.
Distinctively transition innovative resources after compelling human capital. Synergistically provide access to turnkey e-services whereas scalable leadership. Assertively engage next-generation metrics via high-payoff total linkage. Conveniently reintermediate extensible ideas vis-a-vis efficient action items.
Completely seize client-based technologies and viral niches. Distinctively fashion resource-leveling content for functional partnerships. Dramatically generate cross-platform meta-services through adaptive manufactured products. Dramatically synthesize installed base meta-services and adaptive quality vectors. Dramatically harness distinctive portals through plug-and-play schemas.Uniquely negotiate equity invested infomediaries and distributed data. Efficiently aggregate resource-leveling scenarios before superior growth strategies. Appropriately customize revolutionary convergence.'

product2 = Product.create! name: 'Casual Blazer', description: 'Objectively monetize web-enabled expertise whereas enabled growth successful strategies. Objectively monetize viral channels for leading-edge infrastructures. Energistically maximize high standards in communities without e-business growth strategies. Quickly aggregate.', price: 34, promotional_price: 22, body: 'Continually extend <a href="http://www.google.com">B2C</a> processes with emerging ROI. Efficiently deliver one-to-one channels with backend partnerships. Appropriately disintermediate just in time deliverables before premium niches.
Distinctively transition innovative resources after compelling human capital. Synergistically provide access to turnkey e-services whereas scalable leadership. Assertively engage next-generation metrics via high-payoff total linkage. Conveniently reintermediate extensible ideas vis-a-vis efficient action items.
Completely seize client-based technologies and viral niches. Distinctively fashion resource-leveling content for functional partnerships. Dramatically generate cross-platform meta-services through adaptive manufactured products. Dramatically synthesize installed base meta-services and adaptive quality vectors. Dramatically harness distinctive portals through plug-and-play schemas.Uniquely negotiate equity invested infomediaries and distributed data. Efficiently aggregate resource-leveling scenarios before superior growth strategies. Appropriately customize revolutionary convergence.'

product3 = Product.create! name: 'Wool Jacket', description: 'Objectively monetize web-enabled expertise whereas enabled growth successful strategies. Objectively monetize viral channels for leading-edge infrastructures. Energistically maximize high standards in communities without e-business growth strategies. Quickly aggregate.', price: 34, promotional_price: 22, body: 'Continually extend <a href="http://www.google.com">B2C</a> processes with emerging ROI. Efficiently deliver one-to-one channels with backend partnerships. Appropriately disintermediate just in time deliverables before premium niches.
Distinctively transition innovative resources after compelling human capital. Synergistically provide access to turnkey e-services whereas scalable leadership. Assertively engage next-generation metrics via high-payoff total linkage. Conveniently reintermediate extensible ideas vis-a-vis efficient action items.
Completely seize client-based technologies and viral niches. Distinctively fashion resource-leveling content for functional partnerships. Dramatically generate cross-platform meta-services through adaptive manufactured products. Dramatically synthesize installed base meta-services and adaptive quality vectors. Dramatically harness distinctive portals through plug-and-play schemas.Uniquely negotiate equity invested infomediaries and distributed data. Efficiently aggregate resource-leveling scenarios before superior growth strategies. Appropriately customize revolutionary convergence.'

product1.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/product1.png'
product1.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img1.jpg'
product1.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img2.jpg'
product1.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img3.jpg'
product1.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img4.jpg'
product1.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img5.jpg'


product2.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/product2.png'
product2.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img1.jpg'
product2.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img2.jpg'
product2.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img3.jpg'
product2.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img4.jpg'
product2.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img5.jpg'


product3.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/product3.png'
product3.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img1.jpg'
product3.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img2.jpg'
product3.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img3.jpg'
product3.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img4.jpg'
product3.photos.create! image_url: 'http://demo.themeineed.com/bravana-v1.2/template/assets/img/shop/products/single/single-product-img5.jpg'

for product in [product1, product2, product3]
  (1..5).sample.times do
    product.reviews.create! name: 'Rachel Ferguson', rating: Review::VALUES.sample, title: 'This is awesome!', description: 'Energistically empower seamless systems rather than granular web-readiness. Conveniently foster accurate total linkage vis-a-vis timely interfaces. Synergistically repurpose visionary.', image_url: "http://demo.themeineed.com/bravana-v1.2/template/assets/img/testimonial-author#{rand(1..6)}.png"
  end
end
