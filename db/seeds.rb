# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Product.create(name: "Libtech Skate Banana", price: 520, description: "The Skate Banana’s revolutionary, award winning "Banana Tech" rocker/camber contour re-defined modern snowboarding. This fun easy to ride, high performance dream stick rips hardpack, carves ice, jibs and oats effortlessly in powder. The perfect board to progress on whether you are just getting started or a pro stacking clips.",1, 2021, "Libtech", "all mountain");
Product.create(name: "Defenders of Awesome - DOA 2020", price: 609, description: "The Defenders of Awesome series has a big reputation and these boards back it up. As winners of the most coveted design award in snowboarding for an unprecedented seven years in a row, this model became our #1 selling snowboard and one of the most sought-after snowboards in the world. The D.O.A. features a next-generation hybrid camber design that delivers the pop and response of a cambered board with the predictability of reverse camber and is now available in an extended range of wide sizes. With construction technology like an upgraded Dual Blaster Ashpop™ Core, Fortress™ Kevlar Bound Sidewalls and a high-speed Quantum Drive™ base advancing these boards beyond their modest retail price, the D.O.A. series stands proud as the ultimate go anywhere, do anything freestyle deck.",1, 2021,"Capita", "all mountain");
Product.create(name: "Spring Break", price: 445 , description: "The CAPiTA Spring Break Powder Racer Snowboard will have you gunning it like a young Anakin Skywalker at the Boonta Eve Classic, yelling "Now THIS is powder racing!" It's got all the classic surfboard-inspired features of Corey Smith's Spring Break shapes: a big ol' nose, a wide waist, and a squash-tail to float through the fluff and rail groomers and banked slaloms all day long. The cork inlaid core adds some dampness and surfability to the stick, and Technora Flax Boosters give you a bit more drive and power. It's fast, it's fun, and it's not too hard on the wallet, either.",1, 2021,"Capita" ,"free ride");
Product.create(name: "T.Rice Pro HP C2", price: 250, description: "Travis Rice is known for smooth lines down hairy terrain. Get your hands on his daily driver, the Lib Tech T.Rice Pro HP C2 Snowboard, and put some hair on your chest. This one-of-a-kind board boasts speed and power, unlocking unlimited park and big mountain freedom. It's a showboat in the park, a beast in the powder, and a high-class citizen on the groomers. C2 hybrid camber technology gives you a floaty yet precise ride, while Magne-Traction serrated edges hold your line on dicey surfaces. True riders know - the Lib Tech T.Rice Pro HP C2 Snowboard is a force to be reckoned with.",1, 2021,"Lib Tech" ,"park");
Product.create(name: "Libtech TRS 2020", price: 600, description: "New C3 Camber contour! Originally designed as a park and slopestyle stick, the TRS is a go to for progressive freestyle shredding all over the mountain from the park to the backcountry. A long history of competitive wins in every terrain and discipline imaginable... Olympic medals, World Freeride Tour gold, slopestyle championships and lots of Good Woods. This is a perfect aggressive freestyle snowboard!",1, 2021,"Lib Tech" ,"park");
Product.create(name: "Skeleton Key", price: 500, description: "Just like the fabled key that can open any lock, the Burton Skeleton Key Snowboard is the right tool for almost any job. Striking the perfect balance between freeride and freestyle, the Skeleton Key manages to be playful and powerful, directional and jibby. Its tapered geometry gives it tons of float in pow as well as hip dragging carving prowess on the hardpack. It slays the slush, plays in the park, and handles business in hairy terrain.",1, 2021,"Burton" ,"freeride");
Product.create(name: "Terrain Wrecker", price: 500, description: "Devour the tastiest terrain on the mountain like a hungry elephant in a peanut shop. The Lib Tech Terrain Wrecker C2X Snowboard doesn't just want a piece of the hill, it wants the whole thing. And, thanks to a directional twin shape with a floaty nose and a tweakable tail, this quiver-killing freestyle chassis enables you to do just that! The Lib Tech Terrain Wrecker C2X Snowboard has an appetite for all-terrain trickery and clever lines. That's a lotta nuts!",1, 2021,"Lib Tech" ,"all mountain");
Product.create(name: "T.Rice Orca Snowboard 2021", price: 650, description: " three short years, the Lib Tech T.Rice Orca Snowboard has cemented its legacy as one of the most sought after and capable boards ever made. The Orca is the envy of all-mountain riders and powder hounds alike.",1, 2021,"Lib Tech" ,"powder");
Product.create(name: "Kazu Kokubo Pro Snowboard 2021", price: 580, description: "You've seen the video parts. You've drooled at the powder slashes, oohed and awed at the surfy turns down open faces, sat slack-jawed at the massive cliff drops and tranny finders. ",1, 2021,"Capita" ,"al mountain");
Product.create(name: "Heritage Snowboard 2021 ", price: 600, description: "The Never Summer Heritage Snowboard is Never Summer s longest running board and truly a testament to what they're all about. It's a burly all-mountain twin with a wider waist, bombproof construction, and the OG rocker-camber profile for pop and pivot. ",1, 2021,"Never Summer" ,"All Mountain");

#Images
Images("https://cdn.shopify.com/s/files/1/0231/7366/0752/products/RST4_DOA_148.png?v=1591387553",1)
Images("https://images.evo.com/imgp/700/181172/719584/capita-spring-break-powder-racer-snowboard-2021-.jpg",2)
Images("https://images.evo.com/imgp/700/181648/718530/lib-tech-t-rice-pro-hp-c2-snowboard-2021-.jpg",3)
Images("https://images.evo.com/imgp/700/181647/718523/lib-tech-trs-c3-snowboard-2021-.jpg",4)
Images("https://images.evo.com/imgp/700/181285/740840/burton-skeleton-key-snowboard-2021-.jpg",5)
Images("https://images.evo.com/imgp/700/181656/718536/lib-tech-terrain-wrecker-c2x-snowboard-2021-.jpg",6)
Images("https://images.evo.com/imgp/700/181659/718537/lib-tech-t-rice-orca-snowboard-2021-.jpg",7)
Images("https://images.evo.com/imgp/700/181163/719617/capita-kazu-kokubo-pro-snowboard-2021-.jpg",8)
Images("https://images.evo.com/imgp/700/185025/741203/never-summer-heritage-snowboard-2021-.jpg",9)


#Categories
Category.create(name: "split")
Category.create(name: "park")
Category.create(name: "backcountry")
Category.create(name: "powder")
Category.create(name: "freeride")
Category.create(name: "all mountain")

#Category Products
CategoryProduct.create(2,1)
CategoryProduct.create(2,2)
CategoryProduct.create(2,3)
CategoryProduct.create(2,4)
CategoryProduct.create(2,5)
CategoryProduct.create(2,6)
CategoryProduct.create(2,7)
CategoryProduct.create(2,8)
CategoryProduct.create(2,9)
CategoryProduct.create(2,9)

#Supplier
Supplier.create("Burton","burton@example.com","5555555555")
Supplier.create("Lib Tech","libtech@example.com","5555555555")
Supplier.create("CAPiTA","capita@example.com","5555555555")

#Users
User.create("Todd", "todd@example.com","password","password",true)
User.create("Tim ", "tim@example.com","password","password",false)
