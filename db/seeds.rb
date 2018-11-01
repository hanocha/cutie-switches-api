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
  cherry_silent_red: 'Cherry Silent Red',
  kailh_box_pink: 'Kailh Box Pink',
  kailh_box_royal: 'Kailh Box Royal',
  kailh_box_violet: 'Kailh Box Violet',
  kailh_box_white: 'Kailh Box White',
  kailh_pink: 'Kailh Pink',
}
cdn_url = "http://cdn.hanolab.net"

switches.each do |s|
  Switch.create(
    name: s,
    image_url: "#{Settings.api_url}/#{s.key}.png",
    sound_url: "#{Settings.api_url}/#{s.key}.mp3",
  )
end
