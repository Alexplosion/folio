# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
    Blog.create!(
        title: "Mon post #{blog}",
        body:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nibh leo, ullamcorper eget congue id, malesuada porttitor lacus. Vivamus dui diam, tincidunt dapibus nisl eu, consectetur vehicula turpis. Nullam molestie neque urna, quis aliquet arcu bibendum sit amet. Cras a facilisis ante, et tincidunt metus. Integer porta, nunc a varius iaculis, magna nulla venenatis nisl, in fringilla augue sapien ut erat. Etiam sagittis lorem quis enim fermentum, sit amet scelerisque ante ultrices. Aliquam erat volutpat. Fusce turpis dui, commodo ut risus nec, iaculis rhoncus quam. Integer aliquam elementum turpis ultrices vehicula. Ut cursus ante vel mi tristique posuere. Integer id neque quis erat ornare ultricies eu ut enim."
    )
end

5.times do |skill| 
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

10.times do |book|
    Book.create!(
        title: "Mon book #{book}",
        subtitle: "Mon subtitle #{book}",
        body:  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nibh leo, ullamcorper eget congue id, malesuada porttitor lacus. Vivamus dui diam, tincidunt dapibus nisl eu, consectetur vehicula turpis. Nullam molestie neque urna, quis aliquet arcu bibendum sit amet. Cras a facilisis ante, et tincidunt metus. Integer porta, nunc a varius iaculis, magna nulla venenatis nisl, in fringilla augue sapien ut erat. Etiam sagittis lorem quis enim fermentum, sit amet scelerisque ante ultrices. Aliquam erat volutpat. Fusce turpis dui, commodo ut risus nec, iaculis rhoncus quam. Integer aliquam elementum turpis ultrices vehicula. Ut cursus ante vel mi tristique posuere. Integer id neque quis erat ornare ultricies eu ut enim.",
        main_img:"http://placehold.it/600x400",
        thumb_img:"http://placehold.it/350x250",
    )
end