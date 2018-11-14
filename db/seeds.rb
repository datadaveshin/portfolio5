# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do | blog |
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Bacon ipsum dolor amet shoulder ut burgdoggen aute. Sint adipisicing sausage alcatra ribeye exercitation pastrami cow tenderloin salami mollit pariatur ground round. Adipisicing sint sausage, cow velit reprehenderit boudin pariatur aliquip doner dolore dolor veniam. Reprehenderit picanha esse, sunt short loin ground round ut flank et id ex. Frankfurter tongue burgdoggen shank spare ribs. Biltong proident porchetta mollit."
    )
end

puts "10 blog posts created"

5.times do | skill |
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

9.times do | portfolio_item |
    Portfolio.create!(
        title: "Portfolio title #{portfolio_item}",
        subtitle: "My great service",
        body: "Lorem ipsum dolor amet kale chips quinoa artisan, pour-over tousled jean shorts photo booth vice lyft DIY meggings. Blog keffiyeh stumptown post-ironic. Mixtape jean shorts hot chicken pickled. Typewriter hammock vexillologist portland kickstarter plaid. Biodiesel fashion axe listicle viral, helvetica bitters vice la croix typewriter jean shorts vape heirloom ramps plaid.",
        main_image: "https://via.placeholder.com/600x400.png?text=A+600x400+png",
        thumb_image: "https://via.placeholder.com/350x200.png?text=A+350x200+png"
    )
end

puts "9 portfolio items created"
