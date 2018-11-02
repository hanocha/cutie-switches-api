# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

switches = {
  alps_blue: 'ALPS Blue',
  alps_hulk: 'ALPS Hulk',
  alps_white: 'ALPS White',
  cherry_black: 'Cherry Black',
  cherry_blue: 'Cherry Blue',
  cherry_brown: 'Cherry Brown',
  cherry_clear: 'Cherry Clear',
  cherry_gray: 'Cherry Gray',
  cherry_green: 'Cherry Green',
  cherry_red: 'Cherry Red',
  cherry_silent_red: 'Cherry Silent Red',
  cherry_silver: 'Cherry Silver',
  cherry_white: 'Cherry White',
  gateron_brown: 'Gateron Brown',
  gateron_red: 'Gateron Red',
  gateron_yellow: 'Gateron Yellow',
  kailh_box_clear: 'Kailh Box Clear',
  kailh_box_pink: 'Kailh Box Pink',
  kailh_box_royal: 'Kailh Box Royal',
  kailh_box_violet: 'Kailh Box Violet',
  kailh_pink: 'Kailh Pink',
}
cdn_url = "http://cdn.hanolab.net"

switches.each do |k, v|
  Switch.create(
    name: v,
    image_url: "#{cdn_url}/#{k.to_s}.png",
    sound_url: "#{cdn_url}/#{k.to_s}.mp3",
  )
end
