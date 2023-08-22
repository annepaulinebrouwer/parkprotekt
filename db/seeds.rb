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
  title: 'Car collision',
  description: 'Car collision with black bear on Southside Drive'
)

black_bear.markers.create!(
  latitude: '37.8308',
  longitude: '-119.4583',
  category: 'fire',
  title: 'Smoke detected',
  description: 'Smoke detected around Tenaya Lake'
)

puts 'Create Red Fox'
red_fox = Animal.create(
  name: 'Red Fox',
  video_url: 'https://www.youtube.com/embed/w1j7tQWCw48?controls=0'
)

puts 'Create markers for Red Fox'
red_fox.markers.create!(
  latitude: '37.850282',
  longitude: '-119.572043',
  category: 'accident',
  title: 'Car collision',
  description: 'Car collision with Red Fox on Tioga Road'
)

red_fox.markers.create!(
  latitude: '37.826214',
  longitude: '-119.4700',
  category: 'fire',
  title: 'Smoke detected',
  description: 'Wildfire detected in territory of Red Fox in Tenaya Lake'
)

red_fox.markers.create!(
  latitude: '37.862141',
  longitude: '-119.4998',
  category: 'GPS Tracker',
  title: 'Current location RF35',
  description: 'GPS Tracker of Red Fox 35'
)

puts 'Finished'
