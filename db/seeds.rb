puts "Cleaning the database"
Animal.destroy_all
Marker.destroy_all

puts 'Create Black Bear'
black_bear = Animal.create(
  name: 'Black Bear',
  video_url: 'https://www.youtube.com/embed/8gbnYDsqWL0?controls=0'
)

puts 'Create markers for Black Bear'
black_bear.markers.create!(
  latitude: '37.865101',
  longitude: '-119.538330',
  category: 'accident',
  title: 'Car coalition',
  description: 'Car coalition with black bear on Southside Drive'
)

black_bear.markers.create!(
  latitude: '37.8308',
  longitude: '-119.4583',
  category: 'fire',
  title: 'Smoke detaction',
  description: 'Smoke detected around Tenaya Lake'
)

puts 'Create Red Fox'
red_fox = Animal.create(
  name: 'Red Fox',
  video_url: 'https://www.youtube.com/embed/w1j7tQWCw48?controls=0'
)

puts 'Create markers for Red Fox'
red_fox.markers.create!(
  latitude: '37.865601',
  longitude: '-120.538330',
  category: 'accident',
  title: 'Car coalition',
  description: 'Car coalition with Red Fox on northeast Drive'
)

red_fox.markers.create!(
  latitude: '37.8308',
  longitude: '-119.4583',
  category: 'drought',
  title: 'Smoke detaction',
  description: 'Drought detected in territory of Red Fox'
)

puts 'Finished'
